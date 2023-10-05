import 'package:akhbark/models/item_body_model.dart';
import 'package:dio/dio.dart';

class AkhbarakService {
   final Dio dio;
   AkhbarakService(this.dio);

  // momken a3melaha zy el oula bardo w mast5dmsh el construtor
  //final Dio dio = Dio();

  void getAkhbarak() async {
    Response response = await dio.get(
        'https://newsapi.org/v2/top-headlines?country=eg&category=sports&apiKey=88e86952e1c746cea291f7f9e12aa4e6');
    Map<String, dynamic> jsonData = response.data;
    //List<dynamic> articles = jsonData['articles'];
    List<ItemBodyModel> articles = jsonData['articles'];
    // for (var article in articles) {
    //   print(article);
    // }
    //print(articles);
  }
}


