// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:newapp/models/ContentBuilder.dart';

import '../Components/News.dart';
import '../models/CategoryWidget.dart';
import '../models/TextWidgetUpdated.dart';

class ContentView extends StatelessWidget {
  const ContentView({super.key, required this.news});
  final News news;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            color: Colors.black,
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          elevation: 0,
          backgroundColor: Colors.transparent,
          centerTitle: true,
          title: const TextUp(
            text1: "News",
            text2: "Cloud",
            textStyle1: TextStyle(
              color: Colors.black,
            ),
            textStyle2: TextStyle(
              color: Colors.yellow,
            ),
          ),
        ),
        body: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            ContentBuilder(
              news: news,
            ),
          ],
        ));
  }
}
