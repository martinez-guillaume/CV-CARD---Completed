# Cartes de visite

## Installation :

- Clone le projet avec `git clone https://github.com/VincentSureau/visit_card.git nom_du_dossier`
- Ouvrir le dossier dans le terminal
- Installer les dépendances PHP avec `composer install`
- Copier le fichier `.env` en `.env.local`
- Dans le fichier `.env.local`, remplacer les variables dans `DATABASE_URL` avec : `utilisateur_sql:mot_de_passe` puis `?nom_de_la_base`
- Créer la base de données avec `symfony console doctrine:database:create`
- Créer les tables avec `symfony console doctrine:migration:migrate -n`
- Lancer le serveur Symfony avec `symfony server:start`