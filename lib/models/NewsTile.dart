// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:newapp/Views/ContentView.dart';

import '../Components/News.dart';

class NewsTile extends StatelessWidget {
  const NewsTile({
    super.key,
    required this.news,
  });
  final News news;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return ContentView(
            news: news,
          );
        }));
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(7),
            child: news.urlToimage != null
                ? Image.network(
                    news.urlToimage!,
                    width: double.infinity,
                    height: 200,
                    fit: BoxFit.cover,
                  )
                : Image.asset("assets/general.avif"),
          ),
          const SizedBox(
            height: 12,
          ),
          Text(
            news.title ?? " ",
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            news.description ?? " ",
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              color: Colors.grey,
              fontSize: 10,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
