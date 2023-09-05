// ignore_for_file: must_be_immutable, file_names

import 'package:flutter/material.dart';
import 'package:newapp/models/NewsTile.dart';

import '../Components/News.dart';

class AllNews extends StatelessWidget {
  AllNews({
    super.key,
    required this.articles,
  });
  List<News> articles;

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: articles.length,
        (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0),
            child: NewsTile(
              news: articles[index],
            ),
          );
        },
      ),
    );
  }
}
