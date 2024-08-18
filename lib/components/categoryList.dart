// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:news_app/components/category_card.dart';
import 'package:news_app/models/category_model.dart';

// ignore: camel_case_types, must_be_immutable
class categoryList extends StatelessWidget {
  // ignore: non_constant_identifier_names
  List<CategoryModel> CM = [
    CategoryModel(
      text: "Business",
      image: "assets/images/business.jpg",
    ),
    CategoryModel(
      text: "Entertainment",
      image: "assets/images/entertaiment.png",
    ),
    CategoryModel(
      text: "Health",
      image: "assets/images/health.jpeg",
    ),
    CategoryModel(
      text: "Science",
      image: "assets/images/science.jpeg",
    ),
    CategoryModel(
      text: "Sports",
      image: "assets/images/sports.jpeg",
    ),
    CategoryModel(
      text: "Technology",
      image: "assets/images/technology.jpeg",
    ),
    CategoryModel(
      text: "General",
      image: "assets/images/general.jpeg",
    ),
  ];

  categoryList({
    super.key,
    // ignore: non_constant_identifier_names
  });

  // ignore: non_constant_identifier_names

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 85,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: CM.length,
          itemBuilder: (context, i) {
            return CategoryCard(
              item: CM[i],
            );
          }),
    );
  }
}