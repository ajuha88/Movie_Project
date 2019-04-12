#!/usr/bin/env python
# coding: utf-8

# In[88]:


# Dependencies
from bs4 import BeautifulSoup
import requests
import pymongo
import pandas as pd


# In[89]:

 # URL of page to be scraped
url = 'https://www.imdb.com/chart/top?ref_=nv_mv_250'

# Retrieve page with the requests module
response = requests.get(url)
# Create BeautifulSoup object; parse with 'lxml'
soup = BeautifulSoup(response.text, 'lxml')

# Examine the results, then determine element that contains sought info
# results are returned as an iterable list
titles = []

results = soup.find_all('td', class_='titleColumn')

# Loop through returned results
for result in results:
        title = result.find('a').text
        titles.append('"'+ title +'"')
        

url2 = "http://www.omdbapi.com/?apikey=trilogy&t="


responses = [];

for title in titles:
    movie_data = requests.get(url2 + title).json()
    responses.append(movie_data)


# In[93]:


#responses

title_list = []
date_list = []
ratings_list = []
imdb_list = []
country_list = []
rated_list = []
genre_list = []
actor_list = []

for data in responses:
   if data["Response"] == "True":
        try:
            title_list.append(data["Title"])
        except:
            title_list.append('N/A')
        
        try:        
            date_list.append(data["Released"])
        except:
            date_list.append('N/A')
        
        try:
            imdb_list.append(data["Metascore"])
        except:
            imdb_list.append('N/A')
           
        try:
            country_list.append(data["Country"])
        except:
            country_list.append('N/A')
        
        try:
            rated_list.append(data["Rated"])
        except:
            rated_list.append('N/A')
          
        try:
            genre_list.append(data["Genre"])
        except:
            genre_list.append('N/A')

        try:
            actor_list.append(data["Actors"])
        except:
            actor_list.append('N/A')
        
        try:
            ratings_list.append(data["Ratings"][0]["Value"])
        except:
            ratings_list.append('N/A')
    

movie_df = pd.DataFrame({"Title": title_list, "Date": date_list, "Rated": rated_list, "Genre":genre_list, "Ratings":ratings_list, "Imdb": imdb_list, "Country": country_list, "Actors": actor_list  })

movie_df = movie_df.loc[movie_df["Imdb"] != "N/A", :]

movie_df


# In[109]:


from sqlalchemy import create_engine


engine = create_engine('sqlite:///movie_db.sqlite', echo=False)


# In[112]:


movie_df.to_sql('movie_info', con=engine)
engine.execute("SELECT * FROM movie_info").fetchall()
#[(0, 'User 1'), (1, 'User 2'), (2, 'User 3')]


# In[ ]:




