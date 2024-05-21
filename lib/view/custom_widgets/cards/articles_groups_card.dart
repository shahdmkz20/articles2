import 'package:articles/core/constants/colors.dart';
import 'package:articles/model/articles/groupsmodel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GroupsItemCard extends StatelessWidget {
  final Article article;

  const GroupsItemCard({
    super.key,
    required this.article,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: const EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: AppColors.primaryCardColor,
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(10), topRight: Radius.circular(10)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            blurRadius: 5.0,
            spreadRadius: 0.0,
          ),
        ],
      ),
      child: Column(
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(5), topRight: Radius.circular(5)),
                child: Image.asset(
                  article.photo,
                  fit: BoxFit.cover,
                  height: Get.height * 0.25,
                  width: Get.width,
                ),
              ),
              Positioned(
                  top: -5,
                  left: -5,
                  child: IconButton(
                    icon: const Icon(
                      Icons.more_vert,
                      color: AppColors.primaryBackGroundColor,
                    ),
                    onPressed: () {},
                  )),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    left: 10.0, right: 10.0, top: 5, bottom: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Row(
                      children: [
                        Text(article.readers),
                        Icon(Icons.menu_book_outlined),
                        SizedBox(
                          width: Get.width / 30,
                        ),
                        Text(article.views),
                        const Icon(Icons.remove_red_eye_outlined),
                        SizedBox(
                          width: Get.width / 30,
                        ),
                        Text(article.reacts),
                        const Icon(Icons.person_pin),
                        Text(" | ${article.category}")
                      ],
                    ),
                    Text(
                      article.title,
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
