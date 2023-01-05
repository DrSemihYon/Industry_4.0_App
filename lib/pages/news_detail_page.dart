import 'package:flutter/material.dart';
import 'package:industry_app/constants.dart';
import 'package:industry_app/model/news.dart';

class NewsDetailPage extends StatelessWidget {
  final News currentNew;
  const NewsDetailPage({Key? key, required this.currentNew}) : super(key: key);

  //TODO : This page will be implemented later.
  //TODO : It will be used to show the details of a news.
  //TODO : It will be navigated from the NewsCard widget.
  //TODO : CurrentNew will be passed to this page from the NewsCard widget.
  //TODO : CurrentNew will be used to show the details of the news.

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: const Text('Detail of the news'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text(
              currentNew.title,
              style: titleTextStyle.copyWith(fontSize: 25),
            ),
            const SizedBox(height: 10),
            Text(
              currentNew.description,
              style: descTextStyle.copyWith(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
