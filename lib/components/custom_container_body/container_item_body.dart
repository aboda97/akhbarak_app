import 'package:akhbark/models/item_body_model.dart';
import 'package:flutter/material.dart';

class ContainerItemBody extends StatelessWidget {
  const ContainerItemBody({
    super.key,
    required this.articles,
  });
  final ItemBodyModel articles;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: articles.itemImage != null
                ? Image.network(
                    //'https://files.printo.in/site/20230525_182930554190_1fbfe5_Translucent-Business-Cards-new.jpg',
                    articles.itemImage!,
                    height: 150,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  )
                : Image.network(
                    'https://upload.wikimedia.org/wikipedia/commons/thumb/d/d1/Image_not_available.png/640px-Image_not_available.png',
                    height: 150,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
          ),
          const SizedBox(
            height: 16.0,
          ),
          Text(
            //'Welcome to our Website, now you can read the latest News in the world',
            articles.itemtitle ?? '',
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
            style: const TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.w700,
              color: Colors.black,
            ),
          ),
          const SizedBox(
            height: 8.0,
          ),
          Text(
            //'Welcome to our Website, now you can read the latest News in the world',
            articles.itemSubTitle ?? '',
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
            style: const TextStyle(
              fontSize: 14.0,
              fontWeight: FontWeight.w700,
              color: Color.fromARGB(255, 34, 94, 146),
            ),
          ),
          const SizedBox(
            height: 16.0,
          ),
        ],
      ),
    );
  }
}
