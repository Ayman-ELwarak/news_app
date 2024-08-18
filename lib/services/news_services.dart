import 'package:dio/dio.dart';
import 'package:news_app/models/article_model.dart';

class NewsServices {
  final Dio dio;

  NewsServices(this.dio);

  Future<List<ArticleModel>> getNews(String category) async {
    try {
      Response response = await dio.get(
          'https://newsapi.org/v2/top-headlines?country=us&apiKey=205512f9761d4775bfad3214935446cc&category=$category');
      Map<String, dynamic> jsonData = response.data;
      List<dynamic> articles = jsonData['articles'];
      List<ArticleModel> myList = [];
      for (int i = 0; i < articles.length; i++) {
        myList.add(ArticleModel(
            image: articles[i]['urlToImage'],
            title: articles[i]['title'],
            subtitle: articles[i]['description']));
      }
      return myList;
    } catch (e) {
      return [];
    }
  }
}
