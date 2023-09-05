// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:newapp/Components/comp.dart';

class CategoryComp extends StatelessWidget {
  const CategoryComp({super.key, this.comp});
  final Comp? comp;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        right: 8,
        left: 8,
      ),
      child: GestureDetector(
        child: Container(
          height: 110,
          width: 110,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(comp!.image!),
            ),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Center(
            child: Text(
              comp!.text!,
              style: const TextStyle(
                fontSize: 14,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
