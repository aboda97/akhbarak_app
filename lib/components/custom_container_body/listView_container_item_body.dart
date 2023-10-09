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
  bool dataLoaded = false;
  @override
  void initState() {
    super.initState();
    getGeneralAkhbark();
  }

  Future<void> getGeneralAkhbark() async {
    articles = await AkhbarakService(Dio()).getAkhbarak();
    dataLoaded = true;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return dataLoaded
        ? SliverList(
            delegate: SliverChildBuilderDelegate(
              childCount: articles.length,
              (context, index) => ContainerItemBody(
                articles: articles[index],
              ),
            ),
          )
        : const SliverToBoxAdapter(
          child: Center(
              child: CircularProgressIndicator(),
            ),
        );
  }
}
