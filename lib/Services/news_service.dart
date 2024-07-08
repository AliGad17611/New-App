import 'package:dio/dio.dart';
import 'package:news_app/Models/article_model.dart';

class NewsService {
  final Dio dio;

  NewsService(this.dio);

  Future<List<ArticleModel>> getNews({required String categoryName}) async {
    final String category = categoryName.toLowerCase();
    try {
      Response response = await dio.get(
          "https://gnews.io/api/v4/top-headlines?category=$category&apikey=d7fae8f71132ee814d4cfbf19915ae33&country=eg");
      Map<String, dynamic> jsonData = response.data;
      List<ArticleModel> articleList = [];
      for (var article in jsonData["articles"]) {
        String? imageUrl = article["image"];
        if (imageUrl != null && await isValidImageUrl(imageUrl)) {
          ArticleModel articleModel = ArticleModel.fromJson(article);
          articleList.add(articleModel);
        }
      }
      return articleList;
    } catch (e) {
      throw Exception('Error fetching news');
    }
  }

  Future<bool> isValidImageUrl(String url) async {
    try {
      final response = await dio.head(url);
      if (response.statusCode == 200 &&
          response.headers.value('content-type')?.startsWith('image/') ==
              true) {
        return true;
      }
      return false;
    } catch (e) {
      return false;
    }
  }
}
