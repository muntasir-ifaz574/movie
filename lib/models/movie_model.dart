class MovieModel {
  final String id;
  final String name;
  final String image;

  final int year;
  final String duration;
  final String genre;
  final String description;

  const MovieModel(
      {required this.id,
      required this.name,
      required this.image,
      required this.year,
      required this.duration,
      required this.genre,
      required this.description});

  static List<MovieModel> listMovie = [
    MovieModel(
        id: '1',
        name: 'Dark',
        image: 'assets/movie1.jpg',
        year: 2017,
        duration: '25h',
        genre: 'TV Series',
        description: "When two children go missing in a small German town,"
            "its sinful past is exposed along with the double lives"
            "and fractured relationships that exist among four families"
            "as they search for the kids. The mystery-drama series introduces"
            "an intricate puzzle filled with twists that includes a web of"
            "curious characters, all of whom have a connection to the town's"
            "troubled history -- whether they know it or not. The story"
            "includes supernatural elements that tie back to the same"
            "town in 1986"),
    MovieModel(
      id: '2',
      name: 'Anon',
      image: 'assets/movie2.jpg',
      year: 2018,
      duration: '1h 40m',
      genre: 'Science fiction',
      description:
          "In a futuristic world where there is no crime and every citizen's"
          "thoughts are recorded, a detective gets worried when he meets a"
          "young woman, whose records and data are absent.",
    ),
    MovieModel(
        id: '3',
        name: 'Begin Again',
        image: 'assets/movie3.jpg',
        year: 2014,
        duration: '1h 44m',
        genre: 'Comedy',
        description:
            "Gretta, a budding songwriter, finds herself alone after her"
            "boyfriend Dave ditches her. Her life gains purpose when Dan,"
            "a record label executive, notices her talent."),
    MovieModel(
        id: '4',
        name: 'Safe Haven',
        image: 'assets/movie4.jpg',
        year: 2013,
        duration: '1h 55m',
        genre: 'Romance',
        description:
            "A mysterious young woman arrives in Southport, North Carolina,"
            "and falls in love with a widowed store owner. However, her dark"
            "past intrudes in her new life."),
    MovieModel(
        id: '5',
        name: 'August Rush',
        image: 'assets/movie5.jpg',
        year: 2007,
        duration: '1h 54m',
        genre: 'Drama/Music',
        description:
            'Lyla and Louis, a singer and a musician, fall in love, but are'
            'soon compelled to separate. Lyla is forced to give up her newborn'
            'but unknown to her, he grows up to become a musical genius.'),
    MovieModel(
        id: '6',
        name: 'Shang-Chi',
        image: 'assets/movie6.jpg',
        year: 2021,
        duration: '2h 12m',
        genre: 'Science fiction',
        description:
            'Shang-Chi must face the past that he thought he had left behind when he is drawn into the web of the mysterious Ten Rings organization.'),
    MovieModel(
        id: '7',
        name: 'Infinite',
        image: 'assets/movie7.jpg',
        year: 2021,
        duration: '1h 46m',
        genre: 'Science fiction',
        description:
            'A man discovers that his hallucinations are actually past life visions.'),
    MovieModel(
        id: '8',
        name: "Don't Breathe 2",
        image: 'assets/movie8.jpg',
        year: 2021,
        duration: '1h 38m',
        genre: 'Terror',
        description:
            'The blind man has been hiding for years in an isolated cabin and has taken in and raised a girl who lost her parents in a house fire. Her quiet existence is shattered when a group of kidnappers show up and take the girl away.'),
    MovieModel(
        id: '9',
        name: 'Jungle Cruise',
        image: 'assets/movie9.webp',
        year: 2021,
        duration: '2h 7m',
        genre: 'Action',
        description:
            'Film set at the beginning of the 20th century. Frank (played by Dwayne Johnson) is the charismatic captain of a peculiar boat that travels through the Amazon rainforest.'),
    MovieModel(
        id: '10',
        name: 'Black Widow',
        image: 'assets/movie10.jpg',
        year: 2021,
        duration: '2h 14m',
        genre: 'Science fiction',
        description:
            'Natasha Romanoff, aka Black Widow, faces the darkest parts of her story when a dangerous conspiracy with ties to her past emerges.'),
    MovieModel(
        id: '11',
        name: 'The Forever Purge',
        image: 'assets/movie11.jpg',
        year: 2021,
        duration: '1h 43m',
        genre: 'Action',
        description:
            'Fifth (and last) installment of The Purge saga. If you could commit any crime with impunity one night a year, what would you do? Crime rages in America and jails are full.'),
    MovieModel(
        id: '12',
        name: 'The Tomorrow War',
        image: 'assets/movie12.jpg',
        year: 2021,
        duration: '2h 18m',
        genre: 'Science fiction',
        description:
            'One day the world comes to a standstill when a group of time travelers is transported from the year 2051 to deliver an urgent message: Humanity is losing the world war against a deadly alien species.'),
    MovieModel(
        id: '13',
        name: 'The Ice Road',
        image: 'assets/movie13.jpg',
        year: 2021,
        duration: '1h 48m',
        genre: 'Action',
        description:
            'A remote diamond mine has collapsed, trapping a group of miners in a remote and frozen region of Canada. As part of a team hired to rescue them.'),
    MovieModel(
        id: '14',
        name: "Hitman's Wife's Bodyguard",
        image: 'assets/movie14.jpg',
        year: 2021,
        duration: '1h 40m',
        genre: 'Action',
        description:
            'Sequel to ‘The other bodyguard’ (Patrick Hughes, 2017). Michael Bryce (Ryan Reynolds) tries to lead a peaceful life, but cant help but join Darius'),
  ];
}
