// ignore: file_names
// ignore_for_file: file_names, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:newapp/Components/comp.dart';
import 'package:newapp/models/Category.dart';

class CategoryRow extends StatelessWidget {
  const CategoryRow({super.key});
  final List<CategoryComp> comps = const [
    CategoryComp(
      comp: Comp(
        text: "Business",
        image: "assets/business.avif",
      ),
    ),
    CategoryComp(
      comp: Comp(
        text: "Entertaiment",
        image: "assets/entertaiment.avif",
      ),
    ),
    CategoryComp(
      comp: Comp(
        text: "general",
        image: "assets/general.avif",
      ),
    ),
    CategoryComp(
      comp: Comp(
        text: "health",
        image: "assets/health.avif",
      ),
    ),
    CategoryComp(
      comp: Comp(
        text: "science",
        image: "assets/science.avif",
      ),
    ),
    CategoryComp(
      comp: Comp(
        text: "sports",
        image: "assets/sports.avif",
      ),
    ),
    CategoryComp(
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
