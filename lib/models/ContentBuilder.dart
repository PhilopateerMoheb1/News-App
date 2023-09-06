// ignore_for_file: file_names

import 'package:flutter/material.dart';

import '../Components/News.dart';

class ContentBuilder extends StatelessWidget {
  const ContentBuilder({super.key, this.news});
  final News? news;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(
            height: 20,
          ),
          Center(
            child: Text(
              news!.title ?? " ",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 15,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(7),
            child: news!.urlToimage != null
                ? Image.network(
                    news!.urlToimage!,
                    width: double.infinity,
                    height: 200,
                    fit: BoxFit.cover,
                  )
                : Image.asset("assets/general.avif"),
          ),
          const SizedBox(
            height: 12,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Text(
              news!.content ?? " ",
              softWrap: true,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
