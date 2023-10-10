import 'package:akhbark/components/custom_container_body/listView_container_item_body.dart';
import 'package:akhbark/models/item_body_model.dart';
import 'package:akhbark/services/akhbarak_service.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class FutureBuilderItemBuilder extends StatefulWidget {
  const FutureBuilderItemBuilder({super.key});

  @override
  State<FutureBuilderItemBuilder> createState() =>
      _FutureBuilderItemBuilderState();
}

class _FutureBuilderItemBuilderState extends State<FutureBuilderItemBuilder> {
  var futureData;
  @override
  void initState() {
    futureData = AkhbarakService(Dio()).getAkhbarak();
    super.initState();
  }

  Widget build(BuildContext context) {
    return FutureBuilder<List<ItemBodyModel>>(
      future: futureData,
      builder: (context, snapShot) {
        if (snapShot.hasData) {
          return ListViewContainerItemBody(
            articles: snapShot.data!,
          );
        } else if (snapShot.hasError) {
          return const SliverToBoxAdapter(
            child: Center(
              child: Text('Ops,, You Have a Problem. Please Try Again'),
            ),
          );
        } else {
          return const SliverToBoxAdapter(
            child: Center(
              child: CircularProgressIndicator(),
            ),
          );
        }
      },
    );
  }
}
