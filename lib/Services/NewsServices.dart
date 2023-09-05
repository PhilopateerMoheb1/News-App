// ignore_for_file: file_names, non_constant_identifier_names
import "package:dio/dio.dart";

import "../Components/News.dart";

class NewsService {
  final Dio dio;
  List<News>? news;
  NewsService(this.dio);

  void getNews(String category) async {
    Response response = await dio.get(
        'https://newsapi.org/v2/top-headlines?country=eg&apiKey=cf82ac6d40cb4c53938ad874eebd64c8&category=$category');
    Map<String, dynamic> jsonData = response.data;
    List<Map<String, dynamic>> articles = jsonData["articles"];
    news = [];
    for (int i = 0; i < articles.length; i++) {
      News eachNews = News(
        author: articles[i]["author"],
        title: articles[i]["title"],
        url: articles[i]["url"],
        publishedAt: articles[i]["publishedAt"],
      );
      news!.add(eachNews);
    }
  }
}
