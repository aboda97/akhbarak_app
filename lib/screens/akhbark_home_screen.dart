import 'package:akhbark/components/custom_container_body/listView_container_item_body.dart';
import 'package:akhbark/components/custom_container_header/listView_container_item_header.dart';
import 'package:flutter/material.dart';

class AkhbarkHomeScreen extends StatelessWidget {
  const AkhbarkHomeScreen({super.key});

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
      body: const CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(
            child: ListViewContainerItemHeader(),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 16.0,
            ),
          ),
          ListViewContainerItemBody(),
        ],
      ),
      //  const Column(children: [
      //   ListViewContainerItemHeader(),
      //   SizedBox(height: 16.0,),
      //   Expanded(
      //     child: ListViewContainerItemBody(),
      //   ),
      // ]),
      //ListViewContainerItemHeader(),
    );
  }
}
