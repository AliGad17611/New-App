class ArticleModel {
  final String title;
  final String? description;
  final String? urlToImage;
  final String? websiteUrl;

  const ArticleModel(
      {required this.websiteUrl,
      required this.title,
      required this.description,
      required this.urlToImage});
}
