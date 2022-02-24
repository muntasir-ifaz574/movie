import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:move_a/models/movie_model.dart';
import 'package:move_a/models/trailers_model.dart';
import 'package:move_a/details_page.dart';
import 'package:move_a/widgets/widgets.dart';
import 'package:new_gradient_app_bar/new_gradient_app_bar.dart';

class HomeCinePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffe2e2e3),
      appBar: NewGradientAppBar(
        centerTitle: true,
        title: ShaderMask(
          blendMode: BlendMode.srcIn,
          shaderCallback: (rect) => LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Colors.pink, Colors.yellow.shade100],
          ).createShader(rect),
          child: Text(
            "Movie App",
            style: TextStyle(
              color: Colors.blue.shade400,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.start,
          ),
        ),
        gradient: LinearGradient(
          colors: [
            Colors.blue.shade200,
            Colors.blue.shade500,
            Colors.blue.shade900,
          ],
        ),
      ),
      body: ListView(
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.symmetric(vertical: 10.0),
        children: [
          _ItemTitle(title: 'Trailes'),
          SizedBox(height: 20.0),
          Container(
            margin: EdgeInsets.only(left: 20.0),
            height: 200,
            child: ListView.builder(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: TrailersMovie.listTrailers.length,
              itemBuilder: (context, i) => _ItemTrailers(
                trailers: TrailersMovie.listTrailers[i],
              ),
            ),
          ),
          SizedBox(height: 20.0),
          _ItemTitle(title: 'Now in Cinemas'),
          Container(
            margin: EdgeInsets.only(left: 20.0),
            height: 280,
            child: ListView.builder(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: MovieModel.listMovie.length,
              itemBuilder: (context, i) => _ItemsNowCinemas(
                movieModel: MovieModel.listMovie[i],
              ),
            ),
          ),
          SizedBox(height: 20.0),
          _ItemTitle(title: 'Coming Soon'),
          Container(
            margin: EdgeInsets.only(left: 20.0),
            height: 280,
            child: ListView.builder(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              itemBuilder: (context, i) => _ItemsSoonMovie(
                movieModel: MovieModel.listMovie[i + 2],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _ItemsSoonMovie extends StatelessWidget {
  final MovieModel movieModel;

  const _ItemsSoonMovie({Key? key, required this.movieModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.only(right: 15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 210,
              width: 160,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(movieModel.image),
                ),
              ),
            ),
            SizedBox(height: 15.0),
            SizedBox(
              width: 160,
              child: TextFrave(
                text: movieModel.name,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 5.0),
          ],
        ),
      ),
    );
  }
}

class _ItemsNowCinemas extends StatelessWidget {
  final MovieModel movieModel;

  const _ItemsNowCinemas({Key? key, required this.movieModel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (_) => DetailsMoviePage(
            movieModel: movieModel,
          ),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(right: 15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Hero(
              tag: 'movie-hero-${movieModel.id}',
              child: Container(
                height: 210,
                width: 160,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(movieModel.image),
                  ),
                ),
              ),
            ),
            SizedBox(height: 15.0),
            SizedBox(
              width: 160,
              child: TextFrave(
                text: movieModel.name,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _ItemTitle extends StatelessWidget {
  final String title;

  const _ItemTitle({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: SizedBox(
        height: 50,
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextFrave(
              text: title,
              color: Colors.black,
              fontSize: 25,
              fontWeight: FontWeight.w500,
            ),
          ],
        ),
      ),
    );
  }
}

class _ItemTrailers extends StatelessWidget {
  final TrailersMovie trailers;

  const _ItemTrailers({Key? key, required this.trailers}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20.0),
      child: Stack(
        children: [
          Container(
            width: 300,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(trailers.image),
              ),
            ),
          ),
          Container(
            width: 300,
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
                      color: Colors.black,
                      size: 45,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}