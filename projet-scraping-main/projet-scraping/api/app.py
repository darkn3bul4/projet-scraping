# api/app.py
from fastapi import FastAPI
import mysql.connector
import pandas as pd
import plotly.express as px
from scraper.scraper import load_annonces_from_db

app = FastAPI()

DB_CONFIG = {
    "host": "localhost",
    "user": "root",
    "password": "",
    "database": "scrapping"
}

@app.get("/stats/price-distribution")
async def price_distribution():
    annonces = load_annonces_from_db()
    df = pd.DataFrame(annonces)
    
    # Clean price data
    df['prix'] = pd.to_numeric(df['prix'], errors='coerce')
    df = df.dropna(subset=['prix'])
    
    fig = px.histogram(df, x='prix', title="Distribution des Prix")
    return fig.to_json()

@app.get("/stats/property-types")
async def property_types():
    annonces = load_annonces_from_db()
    df = pd.DataFrame(annonces)
    
    fig = px.pie(df, names='type_bien', title="Répartition des Types de Biens")
    return fig.to_json()

@app.get("/stats/location-stats")
async def location_stats():
    annonces = load_annonces_from_db()
    df = pd.DataFrame(annonces)
    
    fig = px.bar(df['localisation'].value_counts(), 
                title="Annonces par Localisation")
    return fig.to_json()