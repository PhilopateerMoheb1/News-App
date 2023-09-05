// ignore_for_file: must_be_immutable, file_names

import 'package:flutter/material.dart';
import 'package:newapp/Components/comp.dart';
import 'package:newapp/models/NewsTile.dart';

class AllNews extends StatelessWidget {
  AllNews({super.key});
  List<NewsTile> news = [
    const NewsTile(
      comp: Comp(
          image: "assets/sports.avif",
          text:
              "Amidst the enchanting melodies of a long-forgotten forest, a curious orphan with an affinity for music and a mysterious amulet discovers her lineage traces back to an ancient race of forest guardians, and as dark forces rise to exploit the amulet's power, she must embark on a perilous journey to embrace her destiny, unravel the secrets of her past, and protect the balance between the realms of magic and humanity.",
          secondText:
              "Amidst the enchanting melodies of a long-forgotten forest, a curious orphan with an affinity for music and a mysterious amulet discovers her lineage traces back to an ancient race of forest guardians, and as dark forces rise to exploit the amulet's power, she must embark on a perilous journey to embrace her destiny, unravel the secrets of her past, and protect the balance between the realms of magic and humanity."),
    ),
    const NewsTile(
      comp: Comp(
          image: "assets/general.avif",
          text:
              "Amidst the enchanting melodies of a long-forgotten forest, a curious orphan with an affinity for music and a mysterious amulet discovers her lineage traces back to an ancient race of forest guardians, and as dark forces rise to exploit the amulet's power, she must embark on a perilous journey to embrace her destiny, unravel the secrets of her past, and protect the balance between the realms of magic and humanity.",
          secondText:
              "Amidst the enchanting melodies of a long-forgotten forest, a curious orphan with an affinity for music and a mysterious amulet discovers her lineage traces back to an ancient race of forest guardians, and as dark forces rise to exploit the amulet's power, she must embark on a perilous journey to embrace her destiny, unravel the secrets of her past, and protect the balance between the realms of magic and humanity."),
    ),
    const NewsTile(
      comp: Comp(
          image: "assets/sports.avif",
          text:
              "Amidst the enchanting melodies of a long-forgotten forest, a curious orphan with an affinity for music and a mysterious amulet discovers her lineage traces back to an ancient race of forest guardians, and as dark forces rise to exploit the amulet's power, she must embark on a perilous journey to embrace her destiny, unravel the secrets of her past, and protect the balance between the realms of magic and humanity.",
          secondText:
              "Amidst the enchanting melodies of a long-forgotten forest, a curious orphan with an affinity for music and a mysterious amulet discovers her lineage traces back to an ancient race of forest guardians, and as dark forces rise to exploit the amulet's power, she must embark on a perilous journey to embrace her destiny, unravel the secrets of her past, and protect the balance between the realms of magic and humanity."),
    ),
    const NewsTile(
      comp: Comp(
          image: "assets/general.avif",
          text:
              "Amidst the enchanting melodies of a long-forgotten forest, a curious orphan with an affinity for music and a mysterious amulet discovers her lineage traces back to an ancient race of forest guardians, and as dark forces rise to exploit the amulet's power, she must embark on a perilous journey to embrace her destiny, unravel the secrets of her past, and protect the balance between the realms of magic and humanity.",
          secondText:
              "Amidst the enchanting melodies of a long-forgotten forest, a curious orphan with an affinity for music and a mysterious amulet discovers her lineage traces back to an ancient race of forest guardians, and as dark forces rise to exploit the amulet's power, she must embark on a perilous journey to embrace her destiny, unravel the secrets of her past, and protect the balance between the realms of magic and humanity."),
    ),
    const NewsTile(
      comp: Comp(
          image: "assets/sports.avif",
          text:
              "Amidst the enchanting melodies of a long-forgotten forest, a curious orphan with an affinity for music and a mysterious amulet discovers her lineage traces back to an ancient race of forest guardians, and as dark forces rise to exploit the amulet's power, she must embark on a perilous journey to embrace her destiny, unravel the secrets of her past, and protect the balance between the realms of magic and humanity.",
          secondText:
              "Amidst the enchanting melodies of a long-forgotten forest, a curious orphan with an affinity for music and a mysterious amulet discovers her lineage traces back to an ancient race of forest guardians, and as dark forces rise to exploit the amulet's power, she must embark on a perilous journey to embrace her destiny, unravel the secrets of her past, and protect the balance between the realms of magic and humanity."),
    ),
    const NewsTile(
      comp: Comp(
          image: "assets/general.avif",
          text:
              "Amidst the enchanting melodies of a long-forgotten forest, a curious orphan with an affinity for music and a mysterious amulet discovers her lineage traces back to an ancient race of forest guardians, and as dark forces rise to exploit the amulet's power, she must embark on a perilous journey to embrace her destiny, unravel the secrets of her past, and protect the balance between the realms of magic and humanity.",
          secondText:
              "Amidst the enchanting melodies of a long-forgotten forest, a curious orphan with an affinity for music and a mysterious amulet discovers her lineage traces back to an ancient race of forest guardians, and as dark forces rise to exploit the amulet's power, she must embark on a perilous journey to embrace her destiny, unravel the secrets of her past, and protect the balance between the realms of magic and humanity."),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: 5,
        (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0),
            child: news[index],
          );
        },
      ),
    );
  }
}
