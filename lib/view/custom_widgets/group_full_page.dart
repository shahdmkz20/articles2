import 'package:flutter/material.dart';

import 'app_button.dart';
import 'category_article_card.dart';
import 'custom_articles_text.dart';
import 'news_item.dart';

class GroupFullPage extends StatelessWidget {
  const GroupFullPage({
    super.key,
    required this.articleCategory,
    required this.articleVeiws,
    required this.articleReaders,
    required this.articleReacts,
    required this.articleTitle,
  });
  final String articleCategory;
  final String articleReacts;
  final String articleVeiws;
  final String articleReaders;
  final String articleTitle;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          children: [
            IconButton(
                onPressed: null,
                icon: Image.asset(
                  'assets/images/icons/settings.png',
                  height: 18,
                  width: 18,
                )),
            IconButton(
                onPressed: null,
                icon: Image.asset(
                  'assets/images/icons/share.png',
                  height: 18,
                  width: 18,
                )),
            const Spacer(),
            IconButton(
                onPressed: () {}, // navigatior to account screen
                icon: Image.asset(
                  'assets/images/icons/back.png',
                  height: 20,
                  width: 20,
                )),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          minimum: const EdgeInsets.all(11),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Image.asset('assets/images/RectGr.png'),
            const SizedBox(
              height: 10,
            ),
            Row(children: [
              AppElevatedButton(
                text: 'متابعة',
                onPressed: () {},
                hieght: 40,
                width: 80,
                textSize: 10,
              ),
              const Spacer(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const CustomArticlesText(
                    text: 'تعلم الغرافيك ديزاين',
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  Row(
                    children: [
                      DiscribtionText(articleReaders),
                      const SizedBox(
                        width: 6,
                      ),
                      Image.asset(
                        'assets/images/icons/book.png',
                        width: 16,
                      ),
                      const SizedBox(
                        width: 14,
                      ),
                      DiscribtionText(articleVeiws),
                      const SizedBox(
                        width: 3,
                      ),
                      Image.asset(
                        'assets/images/icons/views.png',
                        width: 19,
                      ),
                      const SizedBox(
                        width: 14,
                      ),
                      DiscribtionText(articleReacts),
                      const SizedBox(
                        width: 3,
                      ),
                      Image.asset('assets/images/icons/outlined-account.png',
                          width: 16),
                      const SizedBox(
                        width: 6,
                      ),
                      const DiscribtionText(' | '),
                      DiscribtionText(articleCategory),
                    ],
                  )
                ],
              ),
            ]),
            const SizedBox(
              height: 15,
            ),
            const CustomArticlesText(text: 'لمحة عن المحتوى'),
            Text(
              'ومع تكامل تكنولوجيا الذكاء الاصطناعي والمنظور العالمي، يدفع المصممون الحدود ويضعون معايير جديدة. في هذا المقال، سوف نتعمق في أهم اتجاهات التصميم الجرافيكي التي من المقرر أن تسيطر على العام المقبل.',
              style: TextStyle(
                fontFamily: 'tajwal',
              ),
              textAlign: TextAlign.right,
            ),
            const SizedBox(
              height: 15,
            ),
            const CustomArticlesText(text: 'المقالات'),
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
          ]),
        ),
      ),
    );
  }
}
