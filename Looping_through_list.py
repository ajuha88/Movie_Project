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
url = 'https://www.imdb.com/list/ls021105452/'

# Retrieve page with the requests module
response = requests.get(url)
# Create BeautifulSoup object; parse with 'lxml'
soup = BeautifulSoup(response.text, 'lxml')


# In[90]:


# Examine the results, then determine element that contains sought info
# results are returned as an iterable list
titles = []

results = soup.find_all('h3', class_='lister-item-header')

# Loop through returned results
for result in results:
        title = result.find('a').text
        titles.append('"'+ title +'"')
        


# In[91]:


#titles


# In[92]:


url2 = "http://www.omdbapi.com/?apikey=5d43599&t="


responses = [];

title_list = [];
for title in titles:
    movie_data = requests.get(url2 + title).json()
    responses.append(movie_data)
    #title_list.append(responses[0]["Title"])
   


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
        title_list.append(data["Title"])
        date_list.append(data["Released"])
        ratings_list.append(data["Ratings"][0]["Value"])
        imdb_list.append(data["Metascore"])
        country_list.append(data["Country"])
        rated_list.append(data["Rated"])
        genre_list.append(data["Genre"])
        actor_list.append(data["Actors"])
        #print(data["Title"])
    


# In[94]:


#imdb_list


# In[96]:


movie_df = pd.DataFrame({"Title": title_list, "Date": date_list, "Rated": rated_list, "Genre":genre_list, "Ratings":ratings_list, "Imdb": imdb_list, "Country": country_list, "Actors": actor_list  })


# In[97]:


movie_df


# In[109]:


from sqlalchemy import create_engine
engine = create_engine('sqlite:///movies.sqlite', echo=False)


# In[112]:


movie_df.to_sql('movie_info', con=engine)
engine.execute("SELECT * FROM movie_info").fetchall()
#[(0, 'User 1'), (1, 'User 2'), (2, 'User 3')]


# In[ ]:




