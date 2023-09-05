// ignore_for_file: file_names, non_constant_identifier_names

import "package:dio/dio.dart";

import "../Components/News.dart";

class NewsService {
  final Dio dio;
  NewsService(
    this.dio,
  );

  Future<List<News>> getNews(String category) async {
    try {
      Response response = await dio.get(
          'https://newsapi.org/v2/top-headlines?country=us&apiKey=cf82ac6d40cb4c53938ad874eebd64c8&category=$category');
      Map<String, dynamic> jsonData = response.data;
      List<dynamic> articles = jsonData["articles"];
      List<News> news = [];
      for (var article in articles) {
        if (article["title"] == "[Removed]") {
          continue;
        }
        News eachNews = News(
          author: article["author"],
          title: article["title"],
          url: article["url"],
          publishedAt: article["publishedAt"],
          urlToimage: article["urlToImage"],
          content: article["content"],
          description: article["description"],
        );
        news.add(eachNews);
      }
      return news;
    } catch (e) {
      return [];
    }
  }
}
