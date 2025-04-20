# Projet OPSCI: Infrastructure complète avec objets connectés et architecture événementielle

- Chen Maxime 21210804
- Gu David

Ce projet met en place une architecture complète pour une plateforme de gestion de produits intégrant une base de données, un système d'événements et des objets connectés.

## Architecture

- **Strapi** pour la gestion des propuits.
- **PostgreSQL** pour stocker les données.
- **React** pour le frontend connecté à l'API de Strapi.
- **Kafka et Zookeeper** pour traiter des flux de données en temps réel avec des **Consumer** et **Producer**.

## Prérequis

- Docker (Docker Desktop) & Docker Compose
- Git

## Déploiement

### 1. Cloner le projet

```bash
git clone https://github.com/David-GSU/OPSCI/
cd OPSCI
```

### 2. Créer un fichier .env pour Strapi

```
DATABASE_CLIENT=postgres
DATABASE_HOST=postgres-container
DATABASE_PORT=5432
DATABASE_NAME=strapi
DATABASE_USERNAME=strapi
DATABASE_PASSWORD=safepassword
```

### 3. Lancer l'application

```bash
chmod +x start.sh stop.sh # Permission d'exécution
./start.sh # Script pour lancer l'application
```
