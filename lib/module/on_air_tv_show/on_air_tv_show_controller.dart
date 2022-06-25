import 'package:get/get.dart';
import 'package:tv_shows_app/module/on_air_tv_show/on_air_tv_show_services.dart';
import 'package:tv_shows_app/module/responses/tv_show_response.dart';
import 'package:tv_shows_app/shared/models/tv_show_model.dart';

class OnAirTVShowController extends GetxController {
  RxList<TVShowModel> tv_shows = <TVShowModel>[].obs;
  int page = 1;
  var isLoading = true.obs;

  @override
  void onInit() async {
    super.onInit();
    await fetchOnAirTvShow();

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

  fetchOnAirTvShow() async {
    final res = await OnAirTVShowServices().fetchTVShow(page);
    TVShowResponse tvShowResponse = TVShowResponse.fromJson(res);
    tvShowResponse.tv_show!.forEach((element) {
      tv_shows.add(element);
    });
    page++;
  }
}
