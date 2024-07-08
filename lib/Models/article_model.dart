class ArticleModel {
  final String title;
  final String? description;
  final String urlToImage;
  final String? websiteUrl;

  const ArticleModel(
      {required this.websiteUrl,
      required this.title,
      required this.description,
      required this.urlToImage});
  factory ArticleModel.fromJson(Map<String, dynamic> json) {
    return ArticleModel(
        title: json['title'],
        description: json['description'],
        urlToImage: json['image'],
        websiteUrl: json['url']);
  }
}
