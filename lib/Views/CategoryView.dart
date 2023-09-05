import 'package:flutter/material.dart';
import 'package:newapp/models/AllNewsBuilder.dart';

import '../models/CategoryWidget.dart';
import '../models/TextWidgetUpdated.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({
    super.key,
    this.category = "general",
  });
  final String category;

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
            AllNewsBuilder(
              category: category,
            ),
          ],
        ));
  }
}
