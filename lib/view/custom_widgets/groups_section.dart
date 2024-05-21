import 'package:flutter/material.dart';

import '../../model/articles/groupsmodel.dart';
import 'cards/articles_groups_card.dart';
import 'custom_articles_text.dart';

class GroupsSection extends StatelessWidget {
  const GroupsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return GroupsItemCard(
              article: GroupsArticleModel[index],
            );
          }),
    ]);
  }
}
