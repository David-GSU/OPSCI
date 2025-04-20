#!/bin/bash

echo "Lancement de l'application"
docker-compose -f dgu_mchen/docker-compose.yml up -d

echo "Lancement du frontend React"
cd frontend
yarn install
yarn dev &
