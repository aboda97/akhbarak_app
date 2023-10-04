import 'package:akhbark/components/custom_container_body/container_item_body.dart';
import 'package:flutter/material.dart';

class ListViewContainerItemBody extends StatelessWidget {
  const ListViewContainerItemBody({super.key});
  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildBuilderDelegate(
        childCount: 10,
      (context, index) => const ContainerItemBody(),
    ));
  }
}
