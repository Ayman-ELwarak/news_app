// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:news_app/components/newsListView.dart';

// ignore: must_be_immutable
class Newscategory extends StatelessWidget {
  String category;
  Newscategory({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: CustomScrollView(
        slivers: [
          Newslistview(category: category),
        ],
      ),
    );
  }
}
