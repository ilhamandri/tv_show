import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lazy_load_scrollview/lazy_load_scrollview.dart';
import 'package:tv_shows_app/module/on_air_tv_show/on_air_tv_show_controller.dart';
import 'package:tv_shows_app/widget/tv_show_list_tile.dart';

class OnAirTVShowPage extends GetView<OnAirTVShowController> {
  const OnAirTVShowPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff27AE60),
        title: const Text('On Air TV Show'),
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
                              controller.fetchOnAirTvShow();
                            },
                            scrollOffset: 200,
                            child: ListView.builder(
                              itemBuilder: (context, index) {
                                return Column(
                                  children: [
                                    TVShowListTile(tv_show_model: controller.tv_shows[index]),
                                  ],
                                );
                              },
                              itemCount: controller.tv_shows.length,
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
