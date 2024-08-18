// ignore_for_file: file_names
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/components/news_title.dart';
import 'package:news_app/models/article_model.dart';
import 'package:news_app/services/news_services.dart';

// ignore: must_be_immutable
class Newslistview extends StatefulWidget {
  String? category;
  Newslistview({super.key, this.category});

  @override
  State<Newslistview> createState() => _NewslistviewState();
}

class _NewslistviewState extends State<Newslistview> {
  // ignore: prefer_typing_uninitialized_variables
  var myList;

  @override
  void initState() {
    super.initState();
    myList = NewsServices(Dio()).getNews(widget.category!);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
      future: myList,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 16.0),
                  child: NewsTitle(
                    obj: snapshot.data![index],
                  ),
                );
              },
              childCount: snapshot.data!.length,
            ),
          );
        } else if (snapshot.hasError) {
          return const Text("Error !!!!!!!!");
        } else {
          return const SliverToBoxAdapter(
              child: Center(child: CircularProgressIndicator()));
        }
      },
    );
  }
}
