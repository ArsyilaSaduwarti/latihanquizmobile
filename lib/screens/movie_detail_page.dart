import 'package:flutter/material.dart';
import '../models/movie_model.dart';

class MovieDetailPage extends StatelessWidget {

  final MovieModel movie;

  const MovieDetailPage({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: Text(movie.title),
      ),

      body: SingleChildScrollView(

        child: Column(

          crossAxisAlignment: CrossAxisAlignment.start,

          children: [

            Image.network(
              movie.imgUrl,
              width: double.infinity,
              height: 350,
              fit: BoxFit.cover,
            ),

            Padding(
              padding: const EdgeInsets.all(16),

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [

                  Text(
                    "${movie.title} (${movie.year})",
                    style: const TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 10),

                  Text("Directed by ${movie.director}"),

                  const SizedBox(height: 10),

                  Row(
                    children: [

                      const Icon(Icons.star, color: Colors.orange),

                      const SizedBox(width: 5),

                      Text("Rated ${movie.rating}/10")

                    ],
                  ),

                  const SizedBox(height: 20),

                  const Text(
                    "Synopsis",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 10),

                  Text(movie.synopsis),

                  const SizedBox(height: 20),

                  Text("Genre: ${movie.genre}"),

                  const SizedBox(height: 10),

                  Text("Cast: ${movie.casts.join(", ")}"),

                  const SizedBox(height: 20),

                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Text("Go to Wikipedia"),
                    ),
                  )

                ],
              ),
            )

          ],
        ),
      ),
    );
  }
}