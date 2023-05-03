<?php

namespace App\DataFixtures;

use Faker\Factory;
use App\Entity\Card;
use App\Entity\User;
use Doctrine\Persistence\ObjectManager;
use Doctrine\Bundle\FixturesBundle\Fixture;

class AppFixtures extends Fixture
{
    public function load(ObjectManager $manager): void
    {
        $faker = Factory::create('fr_FR');

        $user = new User();

        $user
            ->setEmail($faker->email())
            ->setPassword($faker->word())
            ->setIsVerified(true)
        ;

        $manager->persist($user);

        for($i = 0; $i <= 100; $i++) {
            $card = new Card();
            $card
                ->setUser($user)
                ->setFirstname($faker->firstname())
                ->setLastname($faker->lastname())
                ->setEmail($faker->email())
                ->setPhoneNumber($faker->mobileNumber())
                ->setAddress1($faker->streetAddress())
                ->setAddress2($faker->secondaryAddress())
                ->setPostCode($faker->departmentNumber() .'00')
                ->setCity($faker->city())
                ->setCivility($faker->title())
            ;
            $manager->persist($card);
        }

        $manager->flush();
    }
}
