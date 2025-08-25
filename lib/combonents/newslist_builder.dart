import 'package:_6_news_app/combonents/newslist.dart';
import 'package:_6_news_app/models/article-model.dart';
import 'package:_6_news_app/services/news_service.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class NewsListViewBuilder extends StatefulWidget {
  const NewsListViewBuilder({super.key, required this.query});

  final String query;

  @override
  State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();
}

class _NewsListViewBuilderState extends State<NewsListViewBuilder> {
  var futureRequest;
  @override
  void initState() {
    super.initState();
    futureRequest = NewsService(Dio()).getNews(q: widget.query);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
      future: futureRequest,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return NewsListView(articles: snapshot.data!);
        } else if (snapshot.hasError) {
          return Center(child: Text("Error occurred ${snapshot.error}"));
        } else {
          return Padding(
            padding: EdgeInsets.only(
              top: MediaQuery.of(context).size.height * 0.3,
            ),
            child: const Center(
              child: CircularProgressIndicator(color: Color(0xff2076FD)),
            ),
          );
        }
      },
    );
  }
}
