import 'package:flutter/material.dart';

class ContainerItemBody extends StatelessWidget {
  const ContainerItemBody({super.key,});
  

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.network(
              'https://files.printo.in/site/20230525_182930554190_1fbfe5_Translucent-Business-Cards-new.jpg',
              height: 150,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            height: 16.0,
          ),
           const Text(
            'Welcome to our Website, now you can read the latest News in the world',
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.w700,
              color: Colors.black,
            ),
          ),
          const SizedBox(
            height: 8.0,
          ),
           const Text(
            'Welcome to our Website, now you can read the latest News in the world',
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
            style: TextStyle(
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
