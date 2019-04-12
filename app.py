# import necessary libraries
import pandas as pd
import numpy as np

# from collections import counter

from sqlalchemy import func

from flask import (
    Flask,
    render_template,
    jsonify,
    request,
    redirect)

from flask_sqlalchemy import SQLAlchemy

app = Flask(__name__)

app.config['SQLALCHEMY_DATABASE_URI'] = "sqlite:///movie_db.sqlite"

db = SQLAlchemy(app)

#automap base

class movies(db.Model):
    __tablename__ = 'movie_info'

    index = db.Column(db.Integer, primary_key=True)
    Title = db.Column(db.String(64))
    Date = db.Column(db.String)
    Rated = db.Column(db.String)
    Genre = db.Column(db.String)
    Ratings = db.Column(db.String)
    Imdb = db.Column(db.Integer)
    Country = db.Column(db.String)
    Actors = db.Column(db.String)

# create route that renders index.html template
@app.route("/")
def home():
    return render_template("index.html")
    #This will be the page where you can look-up a movie and we'll query the api


# create route that returns data for plotting
@app.route("/api/ratedvsrating")
#need to fill in data
def ratedvsrating():
    results = db.session.query(movies.Title,movies.Rated,movies.Imdb,movies.Genre,movies.Country).all()

    Title = [result[0] for result in results]
    Ratings = [result[2] for result in results]
    Rated = [result[1] for result in results]

    DF_ratedandrating = pd.DataFrame({"Title":Title,"IMDB":Ratings,"Rated":Rated})

    filter_list = ['R', 'PG-13', 'Not Rated', 'PG','G']
    updated_moviesDF = DF_ratedandrating[DF_ratedandrating.Rated.isin(filter_list)]

    updated_moviesdict = updated_moviesDF.to_dict(orient='records')

    return jsonify(updated_moviesdict)

# create route that returns data for plotting
@app.route("/api/genres")
#need to fill in data
def genres():

    #queries sql file for genre of movies
    results = db.session.query(movies.Genre).all()

    lists = []

    for result in results:
        lists.append(result[0])

    #splits out all the genres
    newlist_genre = [y for x in lists for y in x.split(', ')]

    # headerList = ['action','drama','sci-fi']
    actionCount = newlist_genre.count('Action')
    dramaCount = newlist_genre.count('Drama')
    sciFiCount = newlist_genre.count('Sci-Fi')
    crimeCount = newlist_genre.count('Crime')
    thrillerCount = newlist_genre.count('Thriller')
    biographyCount = newlist_genre.count('Biography')
    historyCount = newlist_genre.count('History')
    adventureCount = newlist_genre.count('Adventure')
    fantasyCount = newlist_genre.count('Fantasy')
    westernCount = newlist_genre.count('Western')
    romanceCount = newlist_genre.count('Romance')
    mysteryCount = newlist_genre.count('Mystery')
    familyCount = newlist_genre.count('Family')
    comedyCount = newlist_genre.count('Comedy')
    horrorCount = newlist_genre.count('Horror')
    warCount = newlist_genre.count('War')

    genrelist = [
    ['Action', actionCount],
    ['Drama', dramaCount],
    ['Sci-Fi', sciFiCount],
    ['Crime', crimeCount],
    ['Thriller', thrillerCount],
    ['Biography', biographyCount],
    ['History', historyCount],
    ['Adventure', adventureCount],
    ['Fantasy', fantasyCount],
    ['Western', westernCount],
    ['Romance', romanceCount],
    ['Mystery', mysteryCount],
    ['Family', familyCount],
    ['Comedy', comedyCount],
    ['Horror', horrorCount],
    ['War', warCount]
    ]

    
    return jsonify(genrelist)

@app.route("/visualizations")
def visalizations_page():
    return render_template("visualizations.html")

if __name__ == "__main__":
    app.run()
