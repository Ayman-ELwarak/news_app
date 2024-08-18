import 'package:flutter/material.dart';
import 'package:news_app/components/categoryList.dart';
import 'package:news_app/components/newsListView.dart';

// ignore: must_be_immutable
class HomePage extends StatelessWidget {

  // ignore: non_constant_identifier_names
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "News",
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            Text(
              "Cloud",
              style: TextStyle(
                color: Colors.orange,
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          left: 16.0,
          right: 16.0,
        ),
        child: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(child: categoryList()),
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 32,
              ),
            ),
            Newslistview(category: 'general'),
          ],
        ),
      ),
    );
  }
}
