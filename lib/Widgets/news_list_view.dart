import 'package:flutter/material.dart';
import 'package:news_app/Models/article_model.dart';
import 'package:news_app/Widgets/new_title.dart';

class NewsListView extends StatelessWidget {
  const NewsListView({super.key, required this.articleList});

  final List<ArticleModel> articleList;

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
