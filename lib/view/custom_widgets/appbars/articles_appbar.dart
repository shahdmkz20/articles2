import 'package:flutter/material.dart';

import '../../../core/constants/colors.dart';

class ArticlesAppBar extends StatelessWidget {
  const ArticlesAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const IconButton(
          onPressed: null,
          icon: Icon(
            Icons.notifications_none_outlined,
            size: 30,
            color: AppColors.defaultTextIconsColor,
          ),
        ),
        const IconButton(
            onPressed: null,
            icon: Icon(
              Icons.search,
              size: 30,
              color: AppColors.defaultTextIconsColor,
            )),
        const Spacer(),
        IconButton(
            onPressed: () {}, // navigatior to account screen
            icon: Image.asset(
              'assets/images/icons/account.png',
              height: 32,
              width: 32,
            )),
      ],
    );
  }
}
