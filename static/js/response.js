//movieTitle = whatever is in the search field
//submit = the submit button
//var movie = movie title saved from the search bar in the handleSubmit function

// Submit Button handler
function handleSubmit() {
  // Prevent the page from refreshing
  d3.event.preventDefault();

  // Select the input value from the form
  var movie = d3.select("#movieTitle").node().value;

  console.log("You Searched For: " + movie);

  // clear the input value
  // d3.select("#movieTitle").node().value = "";

  //Looping through the Open Movie API
  var apiKey = "e67c8e35";

  var url = `http://www.omdbapi.com/?apikey=${apiKey}&t=${movie}`;
  
  console.log(url); //print API URL

  var details2;
  
  //print API response details
  d3.json(url).then(function(details) {
    details2+=details;
    console.log(details); //print API response details
    
    //Adding the movie details to the HTML
    document.getElementById("movie-title").innerHTML = details['Title']; //Title 
    document.getElementById("movie-plot").innerHTML = details['Plot']; //Plot

    document.getElementById("release-date").innerHTML = details['Released']; //Release Date
    document.getElementById("director").innerHTML = details['Director']; //Director
    document.getElementById("rating").innerHTML = details['Rated']; //Rating
    document.getElementById("genre").innerHTML = details['Genre']; //Genre
    document.getElementById("runtime").innerHTML = details['Runtime']; //Box Office
    document.getElementById("imdb-rating").innerHTML = details['imdbRating']; //IMDB Rating
    document.getElementById("production").innerHTML = details['Production']; //Production
    document.getElementById("movie-poster-span").innerHTML = "<img src=" + details['Poster'] + " height='300px'>"; //Poster

    // return details;
    })
};

var searchButton = d3.select("#submit");
searchButton.on("click", handleSubmit);





