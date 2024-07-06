import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/Models/article_model.dart';
import 'package:news_app/Services/news_service.dart';
import 'package:news_app/Widgets/new_title.dart';

class NewsListView extends StatefulWidget {
  const NewsListView({
    super.key,
  });

  @override
  State<NewsListView> createState() => _NewsListViewState();
}

class _NewsListViewState extends State<NewsListView> {
  List<ArticleModel> articleList = [];
  @override
  void initState() {
    super.initState();
    getNews();
  }

  Future<void> getNews() async {
    articleList = await NewsService(Dio()).getNews();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildBuilderDelegate(childCount: articleList.length,
            (context, index) {
      return Padding(
        padding: const EdgeInsets.only(bottom: 22),
        child: NewsTitle(
          article: articleList[index],
        ),
      );
    }));
  }
}
