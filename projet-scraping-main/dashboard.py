# dashboard.py
import dash
from dash import html, dcc
import pandas as pd
import plotly.express as px
from sqlalchemy import create_engine

# Configuration de la base de données
DB_CONFIG = {
    "host": "localhost",
    "user": "root",
    "password": "",
    "database": "scrapping"
}

# Connexion à la base via SQLAlchemy
connection_url = f"mysql+mysqlconnector://{DB_CONFIG['user']}:{DB_CONFIG['password']}@{DB_CONFIG['host']}/{DB_CONFIG['database']}"
engine = create_engine(connection_url)

# Fonction pour charger les données
def load_data():
    df = pd.read_sql("SELECT * FROM tunisie_annonce", con=engine)
    df['prix'] = pd.to_numeric(df['prix'], errors='coerce')
    df.dropna(subset=['prix'], inplace=True)
    return df

# Charger les données
df = load_data()

# Initialiser l'application Dash
app = dash.Dash(__name__)
app.title = "Tableau de bord - Tunisie Annonce"

# Graphiques
fig_prix = px.histogram(df, x='prix', nbins=50, title="Distribution des prix")
fig_types = px.pie(df, names='type_bien', title="Répartition des types de biens")
fig_localisation = px.bar(df['localisation'].value_counts().head(10), 
                          title="Top 10 localisations des annonces")

# Layout de l'application
app.layout = html.Div([
    html.H1("Tableau de bord des annonces immobilières", style={'textAlign': 'center'}),
    
    html.Div([
        html.H2("Distribution des prix"),
        dcc.Graph(figure=fig_prix),
    ]),
    
    html.Div([
        html.H2("Répartition des types de biens"),
        dcc.Graph(figure=fig_types),
    ]),

    html.Div([
        html.H2("Annonces par localisation"),
        dcc.Graph(figure=fig_localisation),
    ]),
])

# Lancer l'application
if __name__ == "__main__":
    app.run(debug=True)
