// ignore_for_file: file_names, prefer_typing_uninitialized_variables

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import '../Components/News.dart';
import '../Services/NewsServices.dart';
import 'AllNews.dart';

NewsService? newsService = NewsService(Dio());

class AllNewsBuilder extends StatefulWidget {
  const AllNewsBuilder({
    super.key,
    required this.category,
  });
  final String? category;
  String? get getCategory => category;

  @override
  State<AllNewsBuilder> createState() => _AllNewsBuilderState();
}

class _AllNewsBuilderState extends State<AllNewsBuilder> {
  var future;

  @override
  void initState() {
    super.initState();
    future = newsService!.getNews(widget.category!);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<News>>(
      future: future,
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return const SliverFillRemaining(
            child: Center(
              child: SpinKitCircle(
                color: Colors.red,
                size: 100,
              ),
            ),
          );
        } else if (snapshot.hasError) {
          return const SliverFillRemaining(
            child: Center(
              child: Text(
                "Error",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          );
        }
        return AllNews(articles: snapshot.data!);
      },
    );
  }
}
