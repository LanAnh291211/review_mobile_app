class ItemPopular {
  bool? adult;
  String? backdropPath;
  List<int>? genreIds;
  int? id;
  String? originalLanguage;
  String? originalTitle;
  String? overview;
  double? popularity;
  String? posterPath;
  String? releaseDate;
  String? title;
  bool? video;
  double? voteAverage;
  int? voteCount;

  ItemPopular(
      {this.adult,
      this.backdropPath,
      this.genreIds,
      this.id,
      this.originalLanguage,
      this.originalTitle,
      this.overview,
      this.popularity,
      this.posterPath,
      this.releaseDate,
      this.title,
      this.video,
      this.voteAverage,
      this.voteCount});

  ItemPopular.fromJson(Map<String, dynamic> json) {
    adult = json['adult'];
    backdropPath = "https://image.tmdb.org/t/p/original" + json['backdrop_path'];
    genreIds = json['genre_ids'].cast<int>();
    id = json['id'];
    originalLanguage = json['original_language'];
    originalTitle = json['original_title'];
    overview = json['overview'];
    popularity = json['popularity'];
    posterPath ="https://image.tmdb.org/t/p/w500" + json['poster_path'];
    releaseDate = json['release_date'];
    title = json['title'];
    video = json['video'];
    voteAverage = json['vote_average'];
    voteCount = json['vote_count'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['adult'] = this.adult;
    data['backdrop_path'] = this.backdropPath;
    data['genre_ids'] = this.genreIds;
    data['id'] = this.id;
    data['original_language'] = this.originalLanguage;
    data['original_title'] = this.originalTitle;
    data['overview'] = this.overview;
    data['popularity'] = this.popularity;
    data['poster_path'] = this.posterPath;
    data['release_date'] = this.releaseDate;
    data['title'] = this.title;
    data['video'] = this.video;
    data['vote_average'] = this.voteAverage;
    data['vote_count'] = this.voteCount;
    return data;
  }
}



class ItemPopularDemo {
  String name;
  String urlPhoto;
  String releaseDate;
  ItemPopularDemo({
    this.name = '',
    this.urlPhoto = '',
    this.releaseDate = '',
  });
  
}



final List<ItemPopularDemo> listItemPopularDemo = [
  ItemPopularDemo(
      name: "RAYA và rồng thần cuối cùng",
      urlPhoto: "assets/images/Raya.jpg",
      releaseDate: "05-T3-2021"),
  ItemPopularDemo(
      name: "Tom và Jerry: Quậy tung New York",
      urlPhoto: "assets/images/tom-and-jerry.jpg",
      releaseDate: "26-T2-2021"),
  ItemPopularDemo(
      name: "Itachi Shinden",
      urlPhoto: "assets/images/itachi_shinden.jpg",
      releaseDate: "05-T3-2021"),
  ItemPopularDemo(
      name: "Fear of Rain",
      urlPhoto: "assets/images/fear_of_rain.jpg",
      releaseDate: "12-T2-2021"),
  ItemPopularDemo(
      name: "The Last",
      urlPhoto: "assets/images/naruto_the_last.jpg",
      releaseDate: "19-T8-2021"),
];






// final List<ItemPopular> listItemPopular = [
//     ItemPopular(
//       name:"RÂY và rồng thần cuối cùng" ,
//       urlPhoto: "",
//       releaseDate: "05-T3-2021"
//     ),
//     ItemPopular(
//       name:"RÂY và rồng thần cuối cùng" ,
//       urlPhoto: "",
//       releaseDate: "05-T3-2021"
//     ),
//     ItemPopular(
//       name:"RÂY và rồng thần cuối cùng" ,
//       urlPhoto: "",
//       releaseDate: "05-T3-2021"
//     ),
//     ItemPopular(
//       name:"RÂY và rồng thần cuối cùng" ,
//       urlPhoto: "",
//       releaseDate: "05-T3-2021"
//     ),
//     ItemPopular(
//       name:"RÂY và rồng thần cuối cùng" ,
//       urlPhoto: "",
//       releaseDate: "05-T3-2021"
//     ),
//     ItemPopular(
//       name:"RÂY và rồng thần cuối cùng" ,
//       urlPhoto: "",
//       releaseDate: "05-T3-2021"
//     ),
//     ItemPopular(
//       name:"RÂY và rồng thần cuối cùng" ,
//       urlPhoto: "",
//       releaseDate: "05-T3-2021"
//     ),
//     ItemPopular(
//       name:"RÂY và rồng thần cuối cùng" ,
//       urlPhoto: "",
//       releaseDate: "05-T3-2021"
//     ),
//     ItemPopular(
//       name:"RÂY và rồng thần cuối cùng" ,
//       urlPhoto: "",
//       releaseDate: "05-T3-2021"
//     ),
//   ];
