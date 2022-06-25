import 'package:get/get.dart';
import 'package:tv_shows_app/module/popular_movie/popular_movie_services.dart';
import 'package:tv_shows_app/module/responses/movie_response.dart';
import 'package:tv_shows_app/module/top_rated_movies/top_rated_movies_services.dart';
import 'package:tv_shows_app/shared/models/movie_model.dart';

class PopularMovieController extends GetxController {
  RxList<MovieModel> movies = <MovieModel>[].obs;
  int page = 1;
  var isLoading = true.obs;

  @override
  void onInit() async {
    super.onInit();
    await fetchPopularMovie();

    isLoading.value = false;
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  fetchPopularMovie() async {
    final res = await PopularMovieServices().fetchMovies(page);
    MoviesResponse moviesResponse = MoviesResponse.fromJson(res);
    moviesResponse.movies!.forEach((element) {
      movies.add(element);
    });
    page++;
  }
}
