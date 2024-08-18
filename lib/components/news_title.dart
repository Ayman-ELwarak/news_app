import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';

// ignore: must_be_immutable
class NewsTitle extends StatelessWidget {
  ArticleModel obj;
  NewsTitle({super.key, required this.obj});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(6),
            child: obj.image != null ? Image.network(obj.image!) : Image.asset("assets/images/no_image.jpg"),
          ),
          Text(
            obj.title != null ? obj.title! : '',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
          Text(
            obj.subtitle != null ? obj.subtitle! : '',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              color: Colors.grey,
              fontSize: 10,
            ),
          ),
        ],
      ),
    );
  }
}
