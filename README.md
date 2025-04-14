Projet Scraping Tunisie Annonce
📌 Description
Ce projet est une solution complète de scraping permettant d'extraire les annonces immobilières du site tunisie-annonce.com.
Les données collectées sont stockées dans une base de données MySQL ainsi que dans un fichier JSON (data/annonces.json).
Une API REST est exposée via FastAPI, et un tableau de bord interactif est construit avec Dash et Plotly pour visualiser les statistiques sur les annonces.

⚙️ Fonctionnalités
🕷️ Scraping
Extraction des annonces :

Titre

Prix

Type de bien

Localisation

Superficie

Description

Contact

Date de publication

Lien vers l'annonce

🗄️ Stockage
Base de données MySQL (structure SQL dans scrapping.sql)

Fichier JSON : data/annonces.json

🚀 API REST (FastAPI)
Endpoints statistiques :

/stats/price-distribution

/stats/property-types

/stats/location-stats

📊 Tableau de Bord (Dash)
Visualisation interactive avec Plotly : histogramme, camembert, bar chart…

🧰 Prérequis
Python 3.11+

MySQL Server

Git

📦 Installation
bash
Copy
Edit
# Cloner le projet
git clone https://github.com/darkn3bul4/projet-scraping.git
cd projet-scraping

# Installer les dépendances
pip install -r requirements.txt

# Démarrer le scraper (extraction + enregistrement JSON + MySQL)
python scraper/scraper.py

# Démarrer l'API FastAPI
uvicorn api.app:app --reload

# Lancer le dashboard
python dashboard.py
📁 Arborescence du projet
graphql
Copy
Edit
projet-scraping/
│
├── api/
│   └── app.py                # API FastAPI
│
├── scraper/
│   └── scraper.py           # Script de scraping
│
├── data/
│   └── annonces.json        # Export JSON
│
├── scrapping.sql            # Script SQL pour créer la table dans MySQL
├── dashboard.py             # Dashboard interactif avec Dash
├── requirements.txt         # Dépendances Python
└── README.md
