import 'dart:convert';

import 'package:tv_shows_app/shared/constant.dart';
import 'package:tv_shows_app/shared/endpoints.dart';
import 'package:http/http.dart' as http;

class PopularMovieServices {
  fetchMovies(int page) async {
    var url = Uri.parse(Endpoint.base_url + Endpoint.popularMovie + Constant.apiKey + '&language=en-US&page=$page');
    print('MOVIE URL : $url');
    http.Response response = await http.get(url);
    var decodeResponse = json.decode(response.body);
    print('BODY RESPONSE : ${response.body}');
    return decodeResponse;
  }
}
