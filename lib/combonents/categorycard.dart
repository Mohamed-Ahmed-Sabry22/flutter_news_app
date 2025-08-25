import 'package:_6_news_app/models/category_model.dart';
import 'package:_6_news_app/screens/categoryview.dart';
import 'package:flutter/material.dart';

class Categorycard extends StatelessWidget {
  const Categorycard({super.key, required this.category});
  final CategoryModel category;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: InkWell(
        overlayColor: WidgetStateProperty.all(Colors.transparent),
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => CategoryView(
                query: category.q,
                categoryName: category.categoryName,
              ),
            ),
          );
        },
        child: Container(
          height: 45,
          decoration: BoxDecoration(
            color: category.containerColor,
            borderRadius: BorderRadius.circular(18),
          ),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.only(left: 18, right: 18),
              child: Text(
                category.categoryName,
                style: TextStyle(fontSize: 14, color: category.textColor),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
