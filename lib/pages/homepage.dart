import 'package:flutter/material.dart';
import 'package:industry_app/constants.dart';
import 'package:industry_app/dummy_data.dart';
import 'package:industry_app/widgets/news_card.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffeeeeee),
        title: const Text(
          appBarTitle,
          style: appBarTitleStyle,
        ),
      ),
      body: ListView.builder(
        itemCount: mockNewsList.length,
        itemBuilder: (context, index) {
          return NewsCard(currentNew: mockNewsList[index]);
        },
      ),
    );
  }
}
