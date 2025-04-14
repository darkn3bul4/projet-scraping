import requests
from bs4 import BeautifulSoup
import re
import mysql.connector
from datetime import datetime
import time
from requests.adapters import HTTPAdapter
from urllib3.util.retry import Retry
import os
import json

DB_CONFIG = {
    "host": "localhost",
    "user": "root",  # default MySQL user
    "password": "",  # your MySQL password
    "database": "scrapping"
}

# [Previous functions remain exactly the same...]

def load_annonces_from_db():
    conn = None
    try:
        conn = mysql.connector.connect(**DB_CONFIG)
        cursor = conn.cursor(dictionary=True)
        cursor.execute("""
            SELECT titre, prix, type_bien, localisation, superficie, 
                   description, contact, date_publication, lien 
            FROM tunisie_annonce
        """)
        annonces = cursor.fetchall()
        return annonces
    except mysql.connector.Error as e:
        print(f"MySQL Error: {e}")
        return []
    finally:
        if conn and conn.is_connected():
            cursor.close()
            conn.close()

if __name__ == "__main__":
    session = setup_session()
    all_annonces = []
    for page in range(1, 3):  
        print(f"Scraping page {page}...")
        page_annonces = scrape_tunisie_annonce(page, session)
        all_annonces.extend(page_annonces)
    
    print(f"Total annonces trouvées : {len(all_annonces)}")
    save_to_mysql(all_annonces)  
    save_to_json(all_annonces)