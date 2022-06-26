import 'package:get/get.dart';
import 'package:tv_shows_app/module/home/home_controller.dart';
import 'package:tv_shows_app/module/home/home_page.dart';
import 'package:tv_shows_app/module/now_playing_movie/now_playing_movies_controller.dart';
import 'package:tv_shows_app/module/now_playing_movie/now_playing_movies_page.dart';
import 'package:tv_shows_app/module/on_air_tv_show/on_air_tv_show_controller.dart';
import 'package:tv_shows_app/module/on_air_tv_show/on_air_tv_show_page.dart';
import 'package:tv_shows_app/module/popular_movie/popular_movie_controller.dart';
import 'package:tv_shows_app/module/popular_movie/popular_movie_page.dart';
import 'package:tv_shows_app/module/popular_tv_show/popular_tv_show_controller.dart';
import 'package:tv_shows_app/module/popular_tv_show/popular_tv_show_page.dart';
import 'package:tv_shows_app/module/top_rated_movies/top_rated_movies_controller.dart';
import 'package:tv_shows_app/module/top_rated_movies/top_rated_movies_page.dart';
import 'package:tv_shows_app/module/top_rated_tv_show/top_rated_tv_show_controller.dart';
import 'package:tv_shows_app/module/top_rated_tv_show/top_rated_tv_show_page.dart';
import 'package:tv_shows_app/module/watch_list/watch_list_page.dart';
import 'package:tv_shows_app/module/watch_list/watch_list_controller.dart';
import 'package:tv_shows_app/shared/constant.dart';

class RoutePage {
  static final route = [
    GetPage(
      name: Constant.homePage,
      page: () => HomePage(),
      binding: BindingsBuilder(() {
        Get.put<HomePageController>(HomePageController());
        Get.put<WatchListController>(WatchListController());
      }),
    ),
    GetPage(
      name: Constant.topRatedMovies,
      page: () => TopRatedMoviesPage(),
      binding: BindingsBuilder(() => Get.put<TopRatedMoviesController>(TopRatedMoviesController())),
    ),
    GetPage(
      name: Constant.popularMovies,
      page: () => PopularMoviePage(),
      binding: BindingsBuilder(() => Get.put<PopularMovieController>(PopularMovieController())),
    ),
    GetPage(
      name: Constant.nowPlayingMovies,
      page: () => NowPlayingMoviesPage(),
      binding: BindingsBuilder(() => Get.put<NowPlayingMoviesController>(NowPlayingMoviesController())),
    ),
    GetPage(
      name: Constant.topRatedTVShows,
      page: () => TopRatedTVShowPage(),
      binding: BindingsBuilder(() => Get.put<TopRatedTVShowController>(TopRatedTVShowController())),
    ),
    GetPage(
      name: Constant.popularTVShows,
      page: () => PopularTVShowPage(),
      binding: BindingsBuilder(() => Get.put<PopularTVShowController>(PopularTVShowController())),
    ),
    GetPage(
      name: Constant.onAirTVShows,
      page: () => OnAirTVShowPage(),
      binding: BindingsBuilder(() => Get.put<OnAirTVShowController>(OnAirTVShowController())),
    ),
    GetPage(
      name: Constant.watchList,
      page: () => WatchListPage(),
    ),
  ];
}
