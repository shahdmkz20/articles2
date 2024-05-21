import 'package:flutter/material.dart';

import 'app_button.dart';
import 'news_item.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard(
      {super.key,
      required Function() this.ontap,
      required this.articleViews,
      required this.articleSubTitle,
      required this.articleDate,
      required this.articleTitle,
      required this.articleReadTime});
  final String articleDate;
  final String articleViews;
  final String articleSubTitle;
  final String articleTitle;
  final String articleReadTime;
  final void Function() ontap;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        minimum: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
        child: Container(
          width: 342,
          height: 280,
          decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(4.5),
                  bottomRight: Radius.circular(4.5)),
              color: const Color.fromRGBO(249, 249, 249, 1),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  spreadRadius: 2,
                  blurRadius: 10,
                  offset: const Offset(0, 1), // changes position of shadow
                ),
              ]),
          child: Container(
              margin: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const Text(
                    'اتجاهات التصميم الغرافيكي',
                    style: TextStyle(
                        fontFamily: 'tajwal',
                        fontSize: 18,
                        fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      DiscribtionText(articleReadTime),
                      const SizedBox(
                        width: 3,
                      ),
                      const SizedBox(
                        width: 16,
                      ),
                      DiscribtionText(articleDate),
                      const SizedBox(
                        width: 20,
                      ),
                      DiscribtionText(articleViews),
                      const SizedBox(
                        width: 6,
                      ),
                      Image.asset(
                        'assets/images/icons/views.png',
                        width: 19,
                      ),
                    ],
                  ),
                  const Divider(
                    thickness: 1.5,
                    color: Colors.black,
                  ),
                  Text(
                    articleSubTitle,
                    textAlign: TextAlign.right,
                    style: const TextStyle(
                        fontFamily: 'tajwal',
                        fontSize: 16,
                        fontWeight: FontWeight.w300),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  AppElevatedButton(
                    text: 'المزيد',
                    onPressed: () {},
                    hieght: 50,
                    width: 350,
                    textSize: 16,
                  )
                ],
              )),
        ));
  }
}
