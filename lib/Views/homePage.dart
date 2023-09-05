// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:newapp/models/AllNewsBuilder.dart';
import 'package:newapp/models/CategoryWidget.dart';
import 'package:newapp/models/TextWidgetUpdated.dart';

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
        physics: const BouncingScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(
            child: CategoryRow(),
          ),
          const AllNewsBuilder(
            category: 'general',
          ),
        ],
      ),
    );
  }
}
