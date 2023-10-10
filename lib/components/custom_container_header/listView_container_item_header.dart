import 'package:akhbark/components/custom_container_header/container_item_header.dart';
import 'package:akhbark/models/item_header_model.dart';
import 'package:flutter/material.dart';

class ListViewContainerItemHeader extends StatelessWidget {
  const ListViewContainerItemHeader({
    super.key,
  });
  final List<ItemHeaderModel> itemsList = const [
    ItemHeaderModel(ItemName: 'Business', ItemImage: 'assets/business.avif'),
    ItemHeaderModel(ItemName: 'Sports', ItemImage: 'assets/sports.avif'),
    ItemHeaderModel(ItemName: 'General', ItemImage: 'assets/general.avif'),
    ItemHeaderModel(
        ItemName: 'Technology', ItemImage: 'assets/technology.jpeg'),
    ItemHeaderModel(
        ItemName: 'Entertaiment', ItemImage: 'assets/entertaiment.avif'),
    ItemHeaderModel(ItemName: 'Health', ItemImage: 'assets/health.avif'),
    ItemHeaderModel(ItemName: 'Science', ItemImage: 'assets/science.avif'),
  ];
  
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: itemsList.length,
        itemBuilder: (context, index) {
          return ContainerItemHeader(
            itemModel: itemsList[index],
          );
        },
      ),
    );
  }
}
