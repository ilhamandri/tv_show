import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lazy_load_scrollview/lazy_load_scrollview.dart';
import 'package:tv_shows_app/module/now_playing_movie/now_playing_movies_controller.dart';
import 'package:tv_shows_app/module/top_rated_movies/top_rated_movies_controller.dart';
import 'package:tv_shows_app/widget/movie_list_tile.dart';

class NowPlayingMoviesPage extends GetView<NowPlayingMoviesController> {
  const NowPlayingMoviesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff27AE60),
        title: const Text('Now Playing Movies'),
      ),
      body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
          child: Obx(
            () => controller.isLoading.value
                ? Center(child: CircularProgressIndicator())
                : Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Expanded(
                        child: Obx(
                          () => LazyLoadScrollView(
                            onEndOfPage: () {
                              controller.fetchNowPlayingMovies();
                            },
                            scrollOffset: 200,
                            child: ListView.builder(
                              itemBuilder: (context, index) {
                                return Column(
                                  children: [
                                    MovieListTile(movieModel: controller.movies[index]),
                                  ],
                                );
                              },
                              itemCount: controller.movies.length,
                              shrinkWrap: true,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
          )),
    );
  }
}
