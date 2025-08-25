import 'package:_6_news_app/models/article-model.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class NewsCard extends StatelessWidget {
  const NewsCard({super.key, required this.article});

  final ArticleModel article;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0, top: 16),
      child: Container(
        //height: 280,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xffF5F6F9),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          children: [
            Container(
              height: 180,
              width: double.infinity,
              decoration: BoxDecoration(
                //color: Color.fromARGB(255, 64, 107, 238),
                borderRadius: BorderRadius.circular(15),
              ),
              child: ClipRRect(
                borderRadius: BorderRadiusGeometry.circular(15),
                child: CachedNetworkImage(
                  imageUrl: article.urlToImage,
                  placeholder: (context, url) => Center(
                    child: CircularProgressIndicator(color: Color(0xff2076FD)),
                  ),
                  errorWidget: (context, url, error) =>
                      Icon(Icons.error, color: Color(0xff2076FD), size: 50),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 10.0,
                right: 10,
                bottom: 4,
                top: 10,
              ),
              child: Text(
                article.title,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Tajawal',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10, bottom: 10),
              child: Text(
                article.description,
                style: TextStyle(
                  color: const Color.fromARGB(255, 136, 136, 136),
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Tajawal',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
