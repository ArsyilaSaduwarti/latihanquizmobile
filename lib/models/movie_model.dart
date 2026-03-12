class MovieModel {

  String title;
  String year;
  String genre;
  String director;
  String synopsis;
  double rating;
  String imgUrl;
  List<String> casts;

  MovieModel({
    required this.title,
    required this.year,
    required this.genre,
    required this.director,
    required this.synopsis,
    required this.rating,
    required this.imgUrl,
    required this.casts,
  });
}

List<MovieModel> movieList = [

  MovieModel(
    title: "Inception",
    year: "2010",
    genre: "Sci-Fi",
    director: "Christopher Nolan",
    synopsis:
        "A thief who steals corporate secrets through dream-sharing technology is given the task of planting an idea.",
    rating: 8.8,
    imgUrl:
        "https://image.tmdb.org/t/p/w500/qmDpIHrmpJINaRKAfWQfftjCdyi.jpg",
    casts: [
      "Leonardo DiCaprio",
      "Joseph Gordon-Levitt",
      "Elliot Page"
    ],
  ),

  MovieModel(
    title: "Interstellar",
    year: "2014",
    genre: "Sci-Fi",
    director: "Christopher Nolan",
    synopsis:
        "Explorers travel through a wormhole in space in an attempt to ensure humanity's survival.",
    rating: 8.6,
    imgUrl:
        "https://image.tmdb.org/t/p/w500/rAiYTfKGqDCRIIqo664sY9XZIvQ.jpg",
    casts: [
      "Matthew McConaughey",
      "Anne Hathaway",
      "Jessica Chastain"
    ],
  ),

  MovieModel(
    title: "The Dark Knight",
    year: "2008",
    genre: "Action",
    director: "Christopher Nolan",
    synopsis:
        "Batman faces the Joker, a criminal mastermind who plunges Gotham into chaos.",
    rating: 9.0,
    imgUrl:
        "https://image.tmdb.org/t/p/w500/qJ2tW6WMUDux911r6m7haRef0WH.jpg",
    casts: [
      "Christian Bale",
      "Heath Ledger",
      "Aaron Eckhart"
    ],
  ),

];