import 'package:akhbark/components/custom_container_body/container_item_body.dart';
import 'package:akhbark/models/item_body_model.dart';
import 'package:akhbark/services/akhbarak_service.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class ListViewContainerItemBody extends StatefulWidget {
  const ListViewContainerItemBody({super.key});

  @override
  State<ListViewContainerItemBody> createState() =>
      _ListViewContainerItemBodyState();
}

class _ListViewContainerItemBodyState extends State<ListViewContainerItemBody> {
  List<ItemBodyModel> articles = [];
  @override
  void initState()  {
    super.initState();
     getGeneralAkhbarak();
  }

  Future<void> getGeneralAkhbarak() async {
    articles = await AkhbarakService(Dio()).getAkhbarak();
  }

  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildBuilderDelegate(
      childCount: articles.length,
      (context, index) => ContainerItemBody(
        articles: articles[index],
      ),
    ));
  }
}
