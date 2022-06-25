class TVShowModel {
  final int? id;
  final String? poster_path;
  final String? original_name;
  final String? overview;
  final num? vote_average;

  TVShowModel({
    this.id,
    this.poster_path,
    this.overview,
    this.original_name,
    this.vote_average,
  });

  factory TVShowModel.fromJson(Map<String, dynamic> json) => TVShowModel(
        id: json['id'],
        poster_path: json['poster_path'],
        overview: json['overview'],
        original_name: json['original_name'],
        vote_average: json['vote_average'],
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'poster_path': poster_path,
        'original_name': original_name,
        'overview': overview,
        'vote_average': vote_average,
      };
}
