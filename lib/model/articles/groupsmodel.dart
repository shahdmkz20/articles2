class Article {
  final String title;
  final String category;
  final String photo;
  final String views;
  final String readers;
  final String reacts;

  Article({
    required this.title,
    required this.category,
    required this.photo,
    required this.views,
    required this.readers,
    required this.reacts,
  });
}

List<Article> GroupsArticleModel = [
  Article(
      title: 'كيف تبدأ تجربة المستخدم',
      category: "تصميم",
      photo: "assets/images/article.png",
      views: "12k",
      readers: '150',
      reacts: '25k'),
  Article(
      title: 'ابدأ بصنع تطبيقك الخاص',
      category: "برمجة",
      photo: "assets/images/article.png",
      views: "15k",
      readers: '200',
      reacts: '50k'),
];
