import 'package:_6_news_app/combonents/categorycard.dart';
import 'package:_6_news_app/models/category_model.dart';
import 'package:flutter/material.dart';

SizedBox CategoriesListView() {
  List<CategoryModel> items = const [
    CategoryModel(
      categoryName: "All",
      containerColor: Color(0xff2076FD),
      textColor: Color.fromARGB(255, 255, 255, 255),
      q: 'مصر',
    ),
    CategoryModel(
      categoryName: "Business",
      containerColor: Color(0xffF5F6F9),
      textColor: Color.fromARGB(255, 112, 111, 111),
      q: 'اقتصاد',
    ),
    CategoryModel(
      categoryName: "Sports",
      containerColor: Color(0xffF5F6F9),
      textColor: Color.fromARGB(255, 112, 111, 111),
      q: 'رياضة',
    ),
    CategoryModel(
      categoryName: "Entertainment",
      containerColor: Color(0xffF5F6F9),
      textColor: Color.fromARGB(255, 112, 111, 111),
      q: 'تسلية',
    ),
    CategoryModel(
      categoryName: "Health",
      containerColor: Color(0xffF5F6F9),
      textColor: Color.fromARGB(255, 112, 111, 111),
      q: 'صحة',
    ),
    CategoryModel(
      categoryName: "Science",
      containerColor: Color(0xffF5F6F9),
      textColor: Color.fromARGB(255, 112, 111, 111),
      q: 'علوم',
    ),
    CategoryModel(
      categoryName: "Technology",
      containerColor: Color(0xffF5F6F9),
      textColor: Color.fromARGB(255, 112, 111, 111),
      q: 'تكنولوجيا',
    ),
  ];

  return SizedBox(
    height: 45,
    child: ListView.builder(
      scrollDirection: Axis.horizontal,
      physics: BouncingScrollPhysics(),
      itemCount: items.length,
      itemBuilder: (context, index) {
        return Categorycard(category: items[index]);
      },
    ),
  );
}
