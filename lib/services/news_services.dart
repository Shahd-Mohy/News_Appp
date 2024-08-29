import 'package:dio/dio.dart';
import 'package:news_appp/models/article_model.dart';

class NewsService {
  final Dio dio;

  NewsService(this.dio);

  Future<List<ArticleModel>> getNews({required String category}) async {
    try{
      Response response = await dio.get(
        'https://newsapi.org/v2/everything?q=$category&apiKey=8f15394744fe4d428dfb7f7b5d976928');

    Map<String, dynamic> jsonData = response.data;
    List<dynamic> results = jsonData['articles'];

    List<ArticleModel> articlesList = [];

    for (var result in results) {
      ArticleModel articleModel = ArticleModel(
          image: result['urlToImage'],
          title: result['title'],
          subTitle: result['description']);
      articlesList.add(articleModel);
    }
    return articlesList;
    }
    catch (e) {
      return [];
    }

    
  }
}
