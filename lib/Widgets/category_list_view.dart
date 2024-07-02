import 'package:flutter/material.dart';
import 'package:news_app/Models/category_model.dart';
import 'package:news_app/Widgets/category_card.dart';

class CategoryListView extends StatelessWidget {
  const CategoryListView({
    super.key,
  });
  final List<CategoryModel> categories = const [
    CategoryModel(
      categoryName: 'Business',
      imagePath: 'assets/businesss.jpg',
    ),
    CategoryModel(
      categoryName: 'Entertainment',
      imagePath: 'assets/entertaiment.avif',
    ),
    CategoryModel(
      categoryName: 'Health',
      imagePath: 'assets/health.avif',
    ),
    CategoryModel(
      categoryName: 'Science',
      imagePath: 'assets/science.avif',
    ),
    CategoryModel(
      categoryName: 'Technology',
      imagePath: 'assets/technology.jpeg',
    ),
    CategoryModel(
      categoryName: 'Sports',
      imagePath: 'assets/sports.jpg',
    ),
    CategoryModel(
      categoryName: 'General',
      imagePath: 'assets/general.jpg',
    )
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(),
          itemCount: 7,
          itemBuilder: (context, index) {
            return CategoryCard(
              category: categories[index],
            );
          },
          separatorBuilder: (context, index) {
            return const SizedBox(
              width: 16,
            );
          }),
    );
  }
}
