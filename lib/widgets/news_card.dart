import 'package:flutter/material.dart';

import 'package:industry_app/constants.dart';
import 'package:industry_app/model/news.dart';
import 'package:industry_app/pages/news_detail_page.dart';

class NewsCard extends StatelessWidget {
  final News currentNew;

  const NewsCard({
    Key? key,
    required this.currentNew,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final String imagePath = currentNew.imagePath;
    final String title = currentNew.title;
    final String description = currentNew.description;

    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => NewsDetailPage(currentNew: currentNew),
          ),
        );
      },
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 250,
        margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          boxShadow: boxShadow1,
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
        ),
        child: Column(
          children: [
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Image(
                  image: AssetImage(imagePath),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Flexible(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: titleTextStyle,
                        overflow: TextOverflow.ellipsis,
                      ),
                      Text(
                        description,
                        style: descTextStyle,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
