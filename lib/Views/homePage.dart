// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:newapp/Components/comp.dart';
import 'package:newapp/models/AllNews.dart';
import 'package:newapp/models/CategoryWidget.dart';
import 'package:newapp/models/TextWidgetUpdated.dart';

import '../models/NewsTile.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
        physics: BouncingScrollPhysics(),
        slivers: [
          const SliverToBoxAdapter(
            child: CategoryRow(),
          ),
          AllNews(),
        ],
      ),
    );
  }
}
