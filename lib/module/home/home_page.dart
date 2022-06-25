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
      appBar: AppBar(
        title: const Text('Mini Movie DB'),
      ),
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
                ProgramCard(path: Constant.topRatedMovies, icon: Icons.movie, title: 'Top Rated Movie'),
                ProgramCard(path: Constant.topRatedMovies, icon: Icons.movie, title: 'Top Rated Movie'),
                ProgramCard(path: Constant.topRatedMovies, icon: Icons.movie, title: 'Top Rated Movie'),
                ProgramCard(path: Constant.topRatedMovies, icon: Icons.movie, title: 'Top Rated Movie'),
                ProgramCard(path: Constant.topRatedMovies, icon: Icons.movie, title: 'Top Rated Movie'),
                ProgramCard(path: Constant.topRatedMovies, icon: Icons.movie, title: 'Top Rated Movie'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
