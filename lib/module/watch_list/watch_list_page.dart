import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tv_shows_app/module/watch_list/watch_list_controller.dart';

class WatchListPage extends GetView<WatchListController> {
  WatchListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Watch List'),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.only(bottom: 8),
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(7)),
              border: Border.all(color: Colors.black, width: .2),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(8)),
                    child: CachedNetworkImage(
                      imageUrl: 'https://image.tmdb.org/t/p/w500/${controller.watchList[index]!.backdrop_path!}',
                      fit: BoxFit.fill,
                      height: 50,
                      width: 50,
                    ),
                  ),
                  const SizedBox(width: 12),
                  Flexible(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Flexible(
                          child: Text(
                            controller.watchList[index]!.title!,
                            style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
                          ),
                        ),
                        const SizedBox(height: 4),
                        Row(
                          children: [
                            const Text('Rating :'),
                            const SizedBox(width: 8),
                            Text(controller.watchList[index]!.vote_average!.toString()),
                            Icon(
                              Icons.star,
                              size: 16,
                              color: Colors.orange[300],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
        itemCount: controller.watchList.length,
      ),
    );
  }
}
