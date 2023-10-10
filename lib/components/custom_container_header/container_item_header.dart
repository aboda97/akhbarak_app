import 'package:akhbark/models/item_header_model.dart';
import 'package:akhbark/screens/category_akhbark_screen.dart';
import 'package:flutter/material.dart';

class ContainerItemHeader extends StatelessWidget {
  final ItemHeaderModel itemModel;
  const ContainerItemHeader({super.key, required this.itemModel});
  
  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return CategoryAkhbarkScreen(
            category: itemModel.ItemName,
          );
        }));
      },
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10.0),
        height: 100.0,
        width: 190.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.0),
          image:  DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(itemModel.ItemImage),
          ),
        ),
        child:  Center(
          child: Text(
            itemModel.ItemName,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
