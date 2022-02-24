import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:move_a/models/movie_model.dart';
import 'package:move_a/widgets/widgets.dart';

class DetailsMoviePage extends StatelessWidget {
  final MovieModel movieModel;

  const DetailsMoviePage({Key? key, required this.movieModel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: size.height,
            width: size.width,
            color: Color(0xff21242C),
          ),
          Container(
            height: size.height * .6,
            width: size.width,
            child: Hero(
              tag: 'movie-hero-${movieModel.id}',
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(movieModel.image),
                  ),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.bottomRight,
                      colors: [
                        Color(0xff21242C),
                        Color(0xff21242C).withOpacity(.8),
                        Color(0xff21242C).withOpacity(.1),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 250,
            child: Column(
              children: [
                Container(
                  height: 80,
                  width: size.width,
                  child: Center(
                      child: ClipRRect(
                    borderRadius: BorderRadius.circular(50.0),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(
                        sigmaX: 10.0,
                        sigmaY: 10.0,
                      ),
                      child: Container(
                        padding: EdgeInsets.all(15),
                        color: Colors.white.withOpacity(0.3),
                        child: Icon(
                          Icons.play_arrow_rounded,
                          color: Colors.white,
                          size: 45,
                        ),
                      ),
                    ),
                  )),
                ),
                SizedBox(height: 20.0),
                TextFrave(
                  text: movieModel.name,
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 15.0),
                TextFrave(
                  text: ' ${movieModel.year} |'
                      ' ${movieModel.duration} |'
                      ' ${movieModel.genre}',
                  color: Colors.white70,
                ),
                SizedBox(height: 25.0),
                TextFrave(
                  text: 'Storyline',
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
                SizedBox(height: 15.0),
                Container(
                  width: size.width * .9,
                  child: Wrap(
                    children: [
                      TextFrave(
                        text: movieModel.description,
                        color: Colors.white,
                        maxLines: 6,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
