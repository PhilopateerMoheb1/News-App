// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

class TextUp extends StatelessWidget {
  const TextUp({
    super.key,
    this.text1,
    this.textStyle1,
    this.textStyle2,
    this.text2,
  });
  final String? text1;
  final TextStyle? textStyle1;
  final TextStyle? textStyle2;
  final String? text2;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          text1!,
          style: textStyle1!,
        ),
        Text(
          text2!,
          style: textStyle2!,
        ),
      ],
    );
  }
}
