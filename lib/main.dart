import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:newapp/Views/homePage.dart';

void main() {
  getHttp();
  runApp(const NewsApp());
}

final dio = Dio();

void getHttp() async {
  final response = await dio.get(
      'https://newsapi.org/v2/everything?q=bitcoin&apiKey=cf82ac6d40cb4c53938ad874eebd64c8');
  print(response);
}

class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
