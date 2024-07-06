import 'package:flutter/material.dart';
import 'package:news_app/Models/article_model.dart';

class NewsTitle extends StatelessWidget {
  const NewsTitle({required this.article,
    super.key,
  });
  final ArticleModel article ;
  
  

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image(
              image: NetworkImage(
                  article.urlToImage!),),
        ),
         Text(
          article.title,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 21),
          textDirection: TextDirection.rtl,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
         Text(
          article.description??"",
          style: const TextStyle(fontSize: 18, color: Colors.grey),
          textDirection: TextDirection.rtl,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
      ],
    );
  }
}
