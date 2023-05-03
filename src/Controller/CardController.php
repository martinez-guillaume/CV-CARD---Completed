<?php

namespace App\Controller;

use App\Entity\Card;
use App\Form\CardType;
use App\Repository\CardRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

#[Route('/card')]
class CardController extends AbstractController
{
    #[Route('/', name: 'app_card_index', methods: ['GET'])]
    public function index(CardRepository $cardRepository): Response
    {
        // je récupère l'utilisateur connecté
        $user = $this->getUser();
        return $this->render('card/index.html.twig', [
            'cards' => $cardRepository->findByUser($user),
        ]);
    }

    #[Route('/new', name: 'app_card_new', methods: ['GET', 'POST'])]
    public function new(Request $request, CardRepository $cardRepository): Response
    {
        // on créé un nouvel object card
        $card = new Card();
        // on créé un formulaire
        $form = $this->createForm(CardType::class, $card);
        // on demande au formulaire de traiter la requête
        $form->handleRequest($request);

        // si le formulaire a été soumis et est valide
        if ($form->isSubmitted() && $form->isValid()) {
            // on veut récupérer l'utilisitateur connecté
            $user = $this->getUser();
            // on ajoute l'utilisateur dans la card
            $card->setUser($user);
            // on sauvegarde la card
            $cardRepository->save($card, true);

            // on redirige sur la liste des cards
            return $this->redirectToRoute('app_card_index', [], Response::HTTP_SEE_OTHER);
        }

        // on affiche la page avec le formulaire de création
        return $this->renderForm('card/new.html.twig', [
            'card' => $card,
            'form' => $form,
        ]);
    }

    #[Route('/{id}', name: 'app_card_show', methods: ['GET'])]
    public function show(Card $card): Response
    {
        // si la card ne correspond pas à l'utilisateur connecté
        if($this->getUser() !== $card->getUser()) {
            // je peux le rediriger sur l'accueil de ses card
            return $this->redirectToRoute('app_card_index');
        }
        
        return $this->render('card/show.html.twig', [
            'card' => $card,
        ]);
    }

    #[Route('/{id}/edit', name: 'app_card_edit', methods: ['GET', 'POST'])]
    public function edit(Request $request, Card $card, CardRepository $cardRepository): Response
    {
        // si la card ne correspond pas à l'utilisateur connecté
        if($this->getUser() !== $card->getUser()) {
            // je peux le rediriger sur l'accueil de ses card
            return $this->redirectToRoute('app_card_index');
        }

        $form = $this->createForm(CardType::class, $card);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $cardRepository->save($card, true);

            return $this->redirectToRoute('app_card_index', [], Response::HTTP_SEE_OTHER);
        }

        return $this->renderForm('card/edit.html.twig', [
            'card' => $card,
            'form' => $form,
        ]);
    }

    #[Route('/{id}', name: 'app_card_delete', methods: ['POST'])]
    public function delete(Request $request, Card $card, CardRepository $cardRepository): Response
    {
        // si la card ne correspond pas à l'utilisateur connecté
        if($this->getUser() !== $card->getUser()) {
            // je peux le rediriger sur l'accueil de ses card
            return $this->redirectToRoute('app_card_index');
        }

        if ($this->isCsrfTokenValid('delete'.$card->getId(), $request->request->get('_token'))) {
            $cardRepository->remove($card, true);
        }

        return $this->redirectToRoute('app_card_index', [], Response::HTTP_SEE_OTHER);
    }
}
