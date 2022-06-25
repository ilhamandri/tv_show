import 'package:get/get.dart';
import 'package:tv_shows_app/module/home/home_controller.dart';
import 'package:tv_shows_app/module/home/home_page.dart';
import 'package:tv_shows_app/module/top_rated_movies/top_rated_movies_controller.dart';
import 'package:tv_shows_app/module/top_rated_movies/top_rated_movies_page.dart';
import 'package:tv_shows_app/shared/constant.dart';

class RoutePage {
  static final route = [
    GetPage(
      name: Constant.homePage,
      page: () => HomePage(),
      binding: BindingsBuilder(() => Get.put<HomePageController>(HomePageController())),
    ),
    GetPage(
      name: Constant.topRatedMovies,
      page: () => TopRatedMoviesPage(),
      binding: BindingsBuilder(() => Get.put<TopRatedMoviesController>(TopRatedMoviesController())),
    )
  ];
}
