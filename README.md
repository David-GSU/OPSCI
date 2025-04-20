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
#Server
HOST=0.0.0.0
PORT=1337

#Secrets
APP_KEYS=CFb8haDmWXgODrc/otFe+Q==,0PvEPzg4FCmBPjxVY5Hiuw==,MOlNzQyKH/hmUFLCkmPFtQ==,rU0z/5jPn63AFkJrGQZd9A==
API_TOKEN_SALT=r6sy4sAcHmXe9h01yGw0Jg==
ADMIN_JWT_SECRET=6eIlrGqyjoyfTz+8NNKcYw==
TRANSFER_TOKEN_SALT=ofYgsIggeFGSoHNrxmBfFA==

#Database
DATABASE_CLIENT=postgres
DATABASE_HOST=postgres-container
DATABASE_PORT=5432
DATABASE_NAME=strapi
DATABASE_USERNAME=postgres
DATABASE_PASSWORD=dgumchen
DATABASE_SSL=false
DATABASE_FILENAME=
```

### 3. Lancer l'application

```bash
chmod +x start.sh stop.sh # Permission d'exécution
./start.sh # Script pour lancer l'application
```

Le dashboard Strapi est disponible sur http://localhost:1337.

### 4. Créer un compte

### 5. Créer un Token API Strapi

- Va dans Settings -> API Tokens

- Crée un token Full Access

- Copie la valeur dans les configs du frontend (TOKEN, frontend/src/conf.ts ) et dans STRAPI_TOKEN du docker-compose.yml.

Vous pouvez désormais ajouter des produits via l'interface STRAPI et le visionner grâce au frontend REACT.

### Ajouter des produits avec product-producer

- Allez dans ./product-producer/products.csv et ajouter des produits en respectant la syntaxe .csv. (Créez products.csv sinon)
- Redémarrez le container.
