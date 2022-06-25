import 'package:get/get.dart';
import 'package:tv_shows_app/module/responses/movie_response.dart';
import 'package:tv_shows_app/module/responses/tv_show_response.dart';
import 'package:tv_shows_app/module/top_rated_movies/top_rated_movies_services.dart';
import 'package:tv_shows_app/module/top_rated_tv_show/top_rated_tv_show_services.dart';
import 'package:tv_shows_app/shared/models/movie_model.dart';
import 'package:tv_shows_app/shared/models/tv_show_model.dart';

class TopRatedTVShowController extends GetxController {
  RxList<TVShowModel> tv_shows = <TVShowModel>[].obs;
  int page = 1;
  var isLoading = true.obs;

  @override
  void onInit() async {
    super.onInit();
    await fetchTopRatedTVShow();

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

  fetchTopRatedTVShow() async {
    final res = await TopRatedTVShowServices().fetchTVShow(page);
    TVShowResponse tvShowResponse = TVShowResponse.fromJson(res);
    tvShowResponse.tv_show!.forEach((element) {
      tv_shows.add(element);
    });
    page++;
  }
}
