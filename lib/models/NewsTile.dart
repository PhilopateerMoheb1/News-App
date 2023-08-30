import 'package:flutter/material.dart';

class NewsTile extends StatelessWidget {
  const NewsTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(7),
          child: Image.asset(
            "assets/sports.avif",
            width: double.infinity,
            height: 200,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(
          height: 12,
        ),
        const Text(
          'Amidst the enchanting melodies of a long-forgotten forest, a curious orphan with an affinity for music and a mysterious amulet discovers her lineage traces back to an ancient race of forest guardians, and as dark forces rise to exploit the amulet s power, she must embark on a perilous journey to embrace her destiny, unravel the secrets of her past, and protect the balance between the realms of magic and humanity.',
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        const Text(
          'Amidst the enchanting melodies of a long-forgotten forest, a curious orphan with an affinity for music and a mysterious amulet discovers her lineage traces back to an ancient race of forest guardians, and as dark forces rise to exploit the amulet s power, she must embark on a perilous journey to embrace her destiny, unravel the secrets of her past, and protect the balance between the realms of magic and humanity.',
          maxLines: 3,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            color: Colors.grey,
            fontSize: 10,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
