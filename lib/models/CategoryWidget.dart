// ignore: file_names
// ignore_for_file: file_names, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:newapp/models/Category.dart';

class CategoryRow extends StatelessWidget {
  const CategoryRow({super.key});
  final List<CategoryComp> comps = const [
    CategoryComp(
      text: "Business",
      image: "assets/business.avif",
    ),
    CategoryComp(
      text: "Entertaiment",
      image: "assets/entertaiment.avif",
    ),
    CategoryComp(
      text: "general",
      image: "assets/general.avif",
    ),
    CategoryComp(
      text: "health",
      image: "assets/health.avif",
    ),
    CategoryComp(
      text: "science",
      image: "assets/science.avif",
    ),
    CategoryComp(
      text: "sports",
      image: "assets/sports.avif",
    ),
    CategoryComp(
      text: "technology",
      image: "assets/technology.jpeg",
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
