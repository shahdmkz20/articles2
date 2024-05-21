import 'package:flutter/material.dart';

import '../../model/articles/groupsmodel.dart';
import 'view/custom_widgets/cards/articles_groups_card.dart';

class GroupsSection extends StatelessWidget {
  const GroupsSection({Key? key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height:
          200, // Set a fixed height or use MediaQuery to determine dynamically
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: GroupsArticleModel.length,
        itemBuilder: (context, index) {
          return GroupsItemCard(
            article: GroupsArticleModel[index],
          );
        },
      ),
    );
  }
}
