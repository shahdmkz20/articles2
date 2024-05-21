import 'package:articles/view/custom_widgets/appbars/articles_appbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/get_core.dart';

import 'cards/articles_groups_card.dart';
import 'cards/articles_trend_cards.dart';
import 'categories_section.dart';
import 'custom_articles_text.dart';
import 'groups_section.dart';

import 'package:get/get.dart';

class ArticlesHomePage extends StatefulWidget {
  const ArticlesHomePage({super.key});

  @override
  State<ArticlesHomePage> createState() => _ArticlesHomePageState();
}

class _ArticlesHomePageState extends State<ArticlesHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const ArticlesAppBar(),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              // First section
              const CustomArticlesText(text: "اكتشف مقالات حسب اهتمامك"),
              const TrendArticleCard(
                iconImage: 'assets/images/x_logo.png',
                title: 'تعلم تجربة المستخدم',
                imageUrl: 'assets/images/article.png',
                content: 'كيف تتعلم تجربةالمستخدم خطوة بخطوة',
              ),

              SizedBox(height: Get.height * 0.02),

              //second section
              const CustomArticlesText(
                text: "مجموعات خصيصًا لك",
                more: true,
              ),

              // Second section
              const GroupsSection(),

              // Third Section
              const CategoriesSection(),
            ],
          ),
        ),
      ),
    );
  }
}
