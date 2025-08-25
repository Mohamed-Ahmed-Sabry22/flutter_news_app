import 'package:_6_news_app/combonents/newslist_builder.dart';
import 'package:flutter/material.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({
    super.key,
    required this.query,
    required this.categoryName,
  });

  final String categoryName;
  final String query;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 90,
        scrolledUnderElevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          categoryName,
          style: TextStyle(
            color: Color(0xff2076FD),
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.only(right: 16, left: 16),
        child: Column(children: [NewsListViewBuilder(query: query)]),
      ),
    );
  }
}
