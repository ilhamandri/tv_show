class TVShowModel {
  final int? id;
  final String? backdrop_path;
  final String? title;
  final String? overview;
  final num? vote_average;

  TVShowModel({
    this.id,
    this.backdrop_path,
    this.overview,
    this.title,
    this.vote_average,
  });

  factory TVShowModel.fromJson(Map<String, dynamic> json) => TVShowModel(
        id: json['id'],
        backdrop_path: json['poster_path'],
        overview: json['overview'],
        title: json['original_name'],
        vote_average: json['vote_average'],
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'backdrop_path': backdrop_path,
        'title': title,
        'overview': overview,
        'vote_average': vote_average,
      };
}
