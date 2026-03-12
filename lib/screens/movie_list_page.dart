import 'package:flutter/material.dart';
import '../models/movie_model.dart';
import 'movie_detail_page.dart';

class MovieListPage extends StatefulWidget {

  final String username;

  const MovieListPage({super.key, required this.username});

  @override
  State<MovieListPage> createState() => _MovieListPageState();
}

class _MovieListPageState extends State<MovieListPage> {

  List<bool> bookmarked =
      List.generate(movieList.length, (index) => false);

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: const Text("Movie List"),
      ),

      body: Padding(
        padding: const EdgeInsets.all(16),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [

            Text(
              "Welcome, ${widget.username}!",
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 15),

            Expanded(

              child: ListView.builder(
                itemCount: movieList.length,

                itemBuilder: (context, index) {

                  final movie = movieList[index];

                  return Card(

                    margin: const EdgeInsets.only(bottom: 12),

                    child: ListTile(

                      leading: Image.network(
                        movie.imgUrl,
                        width: 60,
                        fit: BoxFit.cover,
                      ),

                      title: Text("${movie.title} (${movie.year})"),

                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          Text(movie.genre),

                          Row(
                            children: [

                              const Icon(
                                Icons.star,
                                color: Colors.orange,
                                size: 16,
                              ),

                              const SizedBox(width: 5),

                              Text("${movie.rating}/10")

                            ],
                          )

                        ],
                      ),

                      trailing: IconButton(

                        icon: Icon(
                          bookmarked[index]
                              ? Icons.bookmark
                              : Icons.bookmark_border,
                        ),

                        onPressed: () {

                          setState(() {
                            bookmarked[index] = !bookmarked[index];
                          });

                        },

                      ),

                      onTap: () {

                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                MovieDetailPage(movie: movie),
                          ),
                        );

                      },

                    ),
                  );

                },
              ),
            )
          ],
        ),
      ),
    );
  }
}