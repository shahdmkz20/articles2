import 'package:flutter/material.dart';

class CustomArticlesText extends StatelessWidget {
  final String text;
  final bool more;

  const CustomArticlesText({
    super.key,
    required this.text,
    this.more = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 15),
      alignment: Alignment.topRight,
      child: Row(
        mainAxisAlignment: more == true
            ? MainAxisAlignment.spaceBetween
            : MainAxisAlignment.end,
        children: [
          if (more)
            TextButton(
              onPressed: () {},
              child: const Text('المزيد'),
            ),
          Text(
            text,
            style: Theme.of(context).textTheme.titleMedium,
          ),
        ],
      ),
    );
  }
}
