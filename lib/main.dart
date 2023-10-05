import 'package:akhbark/screens/akhbark_home_screen.dart';
import 'package:akhbark/services/akhbarak_service.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

void main() {
  AkhbarakService(Dio()).getAkhbarak();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Akhbark',
      home: AkhbarkHomeScreen(),
    );
  }
}
