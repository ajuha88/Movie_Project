function buildPlot() {
//     /* data route */
  var url = "/api/ratedvsrating";

  d3.json(url).then(function(response) {


    var Title = response.map(movie => movie.Title)
    var Rated = response.map(movie => movie.Rated)
    var IMDB = response.map(movie => movie.IMDB)    

    var trace = {
      x: Rated,
      y: IMDB,
      mode: 'markers',
      marker: {size:12},
      text: Title,
      type: 'scatter',
      hoverinfo:"y+text"
    };

    var data = [trace];

    layout = {
        hovermode:'closest',
        title:'<b>Comparing Rating to Metacritic Data Score</b>',
        xaxis:{zeroline:false, hoverformat: '.2f', title: '<b>Rating</b>'},
        yaxis:{zeroline:false, hoverformat: '.2r', title: '<b>IMDB Score</b>'}
     };

    Plotly.newPlot("plot",data,layout);
  });
}

buildPlot();

