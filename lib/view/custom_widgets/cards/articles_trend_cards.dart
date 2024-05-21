import 'package:articles/core/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TrendArticleCard extends StatelessWidget {
  final String title;
  final String content;
  final String imageUrl;
  final String iconImage;

  const TrendArticleCard({
    super.key,
    required this.title,
    required this.content,
    required this.imageUrl,
    required this.iconImage,
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
                  imageUrl,
                  fit: BoxFit.cover,
                  height: Get.height * 0.25,
                  width: Get.width,
                ),
              ),
              Positioned(
                  top: 20,
                  right: 20,
                  child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: Colors.white,
                      ),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 3),
                      child: Text(
                        "تريند",
                        style: Theme.of(context).textTheme.displaySmall,
                      ))),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(title, style: Theme.of(context).textTheme.titleSmall),
                  Text(
                    content,
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ],
              ),
              Container(
                  margin: const EdgeInsets.only(
                      top: 10, left: 15, right: 10, bottom: 15),
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColors.logoBackgroundColor),
                  width: Get.width * 0.12,
                  child: Image.asset(iconImage)),
            ],
          ),
        ],
      ),
    );
  }
}
