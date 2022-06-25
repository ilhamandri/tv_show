import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lazy_load_scrollview/lazy_load_scrollview.dart';
import 'package:tv_shows_app/module/popular_movie/popular_movie_controller.dart';
import 'package:tv_shows_app/widget/movie_list_tile.dart';

class PopularMoviePage extends GetView<PopularMovieController> {
  const PopularMoviePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Popular Movies'),
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
                              controller.fetchPopularMovie();
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
