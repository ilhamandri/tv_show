import 'package:tv_shows_app/shared/models/movie_model.dart';
import 'package:tv_shows_app/shared/models/tv_show_model.dart';

class TVShowResponse {
  int? page;
  int? total_pages;
  int? total_results;
  List<TVShowModel>? tv_show;

  TVShowResponse({this.tv_show, this.total_pages, this.page, this.total_results});

  factory TVShowResponse.fromJson(Map<String, dynamic> json) {
    var tv_show_list = json['results'] as List;
    List<TVShowModel> tv = tv_show_list.map((element) => TVShowModel.fromJson(element)).toList();
    return TVShowResponse(
      page: json['page'],
      tv_show: tv,
      total_pages: json['total_pages'],
      total_results: json['total_results'],
    );
  }
}
