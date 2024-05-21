import 'package:flutter/material.dart';

import 'category_article_card.dart';
import 'custom_articles_text.dart';

class CategoriesSection extends StatelessWidget {
  const CategoriesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      SafeArea(
        minimum: const EdgeInsets.only(right: 20, left: 12),
        child: Row(children: [
          TextButton(
            onPressed: () {},
            child: const Text(
              'المزيد',
              style: TextStyle(
                  fontFamily: 'tajwal',
                  fontWeight: FontWeight.w400,
                  color: Color.fromARGB(171, 70, 70, 70)),
            ),
          ),
          const Spacer(),
          const CustomArticlesText(
            text: 'التصنيفات',
          ),
        ]),
      ),
      DefaultTabController(
        length: 6,
        child: TabBar(
          unselectedLabelStyle: TextStyle(
              fontFamily: 'tajwal', fontSize: 14, fontWeight: FontWeight.w500),
          unselectedLabelColor: const Color.fromRGBO(168, 168, 168, 1),
          labelStyle: TextStyle(
              fontFamily: 'tajwal', fontSize: 14, fontWeight: FontWeight.w700),
          indicatorSize: TabBarIndicatorSize.label,
          isScrollable: true,
          tabs: const [
            Text('جديد'),
            Text('سياحة'),
            Text('تصميم'),
            Text('رياضة'),
            Text('صحة'),
            Text('إعلام'),
          ],
          indicatorColor: const Color.fromRGBO(255, 133, 0, 1),
          labelColor: const Color.fromRGBO(40, 40, 40, 1),
          onTap: (int num) {},
        ),
      ),
      CategoryCard(
        ontap: () {},
        articleSubTitle:
            'ومع تكامل تكنولوجيا الذكاء الاصطناعي والمنظور العالمي، يدفع المصممون الحدود ويضعون معايير جديدة. في هذا المقال، سوف نتعمق في أهم اتجاهات التصميم الجرافيكي التي من المقرر أن تسيطر على العام المقبل.',
        articleTitle: 'اتجاهات التصميم الجرافيكي لعام 2024 ',
        articleViews: '2.5K',
        articleDate: 'منذ عشرين ساعة',
        articleReadTime: 'عشر دقائق من القراءة',
      ),
      CategoryCard(
        ontap: () {},
        articleSubTitle:
            'ومع تكامل تكنولوجيا الذكاء الاصطناعي والمنظور العالمي، يدفع المصممون الحدود ويضعون معايير جديدة. في هذا المقال، سوف نتعمق في أهم اتجاهات التصميم الجرافيكي التي من المقرر أن تسيطر على العام المقبل.',
        articleTitle: 'اتجاهات التصميم الجرافيكي لعام 2024 ',
        articleViews: '2.5K',
        articleDate: 'منذ عشرين ساعة',
        articleReadTime: 'عشر دقائق من القراءة',
      ),
      CategoryCard(
        ontap: () {},
        articleSubTitle:
            'ومع تكامل تكنولوجيا الذكاء الاصطناعي والمنظور العالمي، يدفع المصممون الحدود ويضعون معايير جديدة. في هذا المقال، سوف نتعمق في أهم اتجاهات التصميم الجرافيكي التي من المقرر أن تسيطر على العام المقبل.',
        articleTitle: 'اتجاهات التصميم الجرافيكي لعام 2024 ',
        articleViews: '2.5K',
        articleDate: 'منذ عشرين ساعة',
        articleReadTime: 'عشر دقائق من القراءة',
      ),
      CategoryCard(
        ontap: () {},
        articleSubTitle:
            'ومع تكامل تكنولوجيا الذكاء الاصطناعي والمنظور العالمي، يدفع المصممون الحدود ويضعون معايير جديدة. في هذا المقال، سوف نتعمق في أهم اتجاهات التصميم الجرافيكي التي من المقرر أن تسيطر على العام المقبل.',
        articleTitle: 'اتجاهات التصميم الجرافيكي لعام 2024 ',
        articleViews: '2.5K',
        articleDate: 'منذ عشرين ساعة',
        articleReadTime: 'عشر دقائق من القراءة',
      ),
    ]);
  }
}
