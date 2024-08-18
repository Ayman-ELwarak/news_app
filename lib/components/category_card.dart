import 'package:flutter/material.dart';
import 'package:news_app/screens/NewsCategory.dart';
import 'package:news_app/models/category_model.dart';

// ignore: must_be_immutable
class CategoryCard extends StatelessWidget {
  CategoryModel item;
  CategoryCard({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16.0),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return Newscategory(category: item.text);
              },
            ),
          );
        },
        child: Container(
          height: 85,
          width: 160,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(item.image),
            ),
          ),
          child: Center(
            child: Text(
              item.text,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
