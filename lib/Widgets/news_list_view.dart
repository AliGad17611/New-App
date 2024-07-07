import 'package:flutter/material.dart';
import 'package:news_app/Models/article_model.dart';
import 'package:news_app/Widgets/new_title.dart';
import 'package:url_launcher/url_launcher.dart';

class NewsListView extends StatelessWidget {
  const NewsListView({super.key, required this.articleList});

  final List<ArticleModel> articleList;

  @override
  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildBuilderDelegate(childCount: articleList.length,
            (context, index) {
      return Padding(
        padding: const EdgeInsets.only(bottom: 22),
        child: GestureDetector(
          onTap: () async {
            var url = articleList[index].websiteUrl;
            if (await canLaunchUrl(Uri.parse(url!))) {
              await launchUrl(Uri.parse(url),
                  mode: LaunchMode.externalApplication);
            } else {
              throw 'Could not launch $url';
            }
          },
          child: NewsTitle(
            article: articleList[index],
          ),
        ),
      );
    }));
  }
}
