import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tv_shows_app/shared/models/movie_model.dart';
import 'package:tv_shows_app/shared/models/tv_show_model.dart';

class TVShowListTile extends StatelessWidget {
  TVShowModel? tv_show_model;
  TVShowListTile({Key? key, this.tv_show_model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      // onTap: () => Get.toNamed(RouteName.movieDetail, arguments: movieModel!.id),
      child: Container(
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
                  imageUrl: 'https://image.tmdb.org/t/p/w500/${tv_show_model!.poster_path!}',
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
                        tv_show_model!.original_name!,
                        style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
                      ),
                    ),
                    const SizedBox(height: 4),
                    Row(
                      children: [
                        const Text('Rating :'),
                        const SizedBox(width: 8),
                        Text(tv_show_model!.vote_average!.toString()),
                        Icon(
                          Icons.star,
                          size: 16,
                          color: Colors.orange[300],
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
