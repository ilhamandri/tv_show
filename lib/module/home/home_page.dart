import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tv_shows_app/module/home/home_controller.dart';
import 'package:tv_shows_app/shared/constant.dart';
import 'package:tv_shows_app/widget/program_card.dart';

class HomePage extends GetView<HomePageController> {
  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Mini Movie DB'), elevation: 0),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Recommended Channel For You',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 24),
            GridView.count(
              shrinkWrap: true,
              crossAxisCount: 3,
              children: [
                ProgramCard(path: Constant.topRatedMovies, icon: Icons.star_outline, title: 'Top Rated Movie'),
                ProgramCard(path: Constant.popularMovies, icon: Icons.movie_creation_outlined, title: 'Popular Movie'),
                ProgramCard(
                  path: Constant.nowPlayingMovies,
                  icon: Icons.play_arrow_outlined,
                  title: 'Now Playing Movie',
                ),
                ProgramCard(path: Constant.topRatedTVShows, icon: Icons.star_outline, title: 'Top Rated TV Show'),
                ProgramCard(path: Constant.popularTVShows, icon: Icons.tv, title: 'Popular TV Show'),
                ProgramCard(path: Constant.onAirTVShows, icon: Icons.live_tv, title: 'On Air TV Show'),
              ],
            ),
            const SizedBox(height: 12),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(onPressed: () => Get.toNamed(Constant.watchList), child: Text('See My Watch List')),
            )
          ],
        ),
      ),
    );
  }
}
