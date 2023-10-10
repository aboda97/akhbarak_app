import 'package:akhbark/components/future_builder_item_body.dart';
import 'package:flutter/material.dart';

class CategoryAkhbarkScreen extends StatelessWidget {
 const CategoryAkhbarkScreen({super.key, required this.category});
  final String category;
   
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: const Text(
          'Akhbark',
          style: TextStyle(
            color: Colors.orange,
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: CustomScrollView(
          slivers: [
            FutureBuilderItemBuilder(
              category: category,
            ),
          ],
        ),
      ),
    );
  }
}
