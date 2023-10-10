import 'package:akhbark/components/custom_container_body/container_item_body.dart';
import 'package:akhbark/models/item_body_model.dart';
import 'package:flutter/material.dart';

class ListViewContainerItemBody extends StatelessWidget {
  const ListViewContainerItemBody({super.key, required this.articles});

  final List<ItemBodyModel> articles;

  @override
  Widget build(BuildContext context) {
    return SliverList(
            delegate: SliverChildBuilderDelegate(
              childCount: articles.length,
              (context, index) => ContainerItemBody(
                articles: articles[index],
              ),
            ),
          );
  }
}


