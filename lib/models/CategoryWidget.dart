// ignore: file_names
// ignore_for_file: file_names, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:newapp/Components/comp.dart';
import 'package:newapp/models/Category.dart';

class CategoryRow extends StatelessWidget {
  CategoryRow({super.key});
  final List<CategoryComp> comps = [
    const CategoryComp(
      comp: Comp(
        text: "Business",
        image: "assets/business.avif",
      ),
    ),
    const CategoryComp(
      comp: Comp(
        text: "entertainment",
        image: "assets/entertaiment.avif",
      ),
    ),
    const CategoryComp(
      comp: Comp(
        text: "general",
        image: "assets/general.avif",
      ),
    ),
    const CategoryComp(
      comp: Comp(
        text: "health",
        image: "assets/health.avif",
      ),
    ),
    const CategoryComp(
      comp: Comp(
        text: "science",
        image: "assets/science.avif",
      ),
    ),
    const CategoryComp(
      comp: Comp(
        text: "sports",
        image: "assets/sports.avif",
      ),
    ),
    const CategoryComp(
      comp: Comp(
        text: "technology",
        image: "assets/technology.jpeg",
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 110,
      child: ListView.builder(
        itemBuilder: (context, index) {
          return comps[index];
        },
        itemCount: comps.length,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
