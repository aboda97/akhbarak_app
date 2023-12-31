import 'package:akhbark/models/item_body_model.dart';
import 'package:dio/dio.dart';

class AkhbarakService {
  final Dio dio;
  AkhbarakService(this.dio);

  // momken a3melaha zy el oula bardo w mast5dmsh el construtor
  //final Dio dio = Dio();

  Future<List<ItemBodyModel>> getTopLinesInAkhbarak({required String category}) async {
    String baseUrl = 'https://newsapi.org';
    String apiKey = '88e86952e1c746cea291f7f9e12aa4e6';
    String url = '/v2/top-headlines';
    try {
      Response response = await dio.get(
          '$baseUrl$url?country=us&apiKey=$apiKey&category=$category');
      Map<String, dynamic> jsonData = response.data;
      List<dynamic> articles = jsonData['articles'];
      List<ItemBodyModel> articleList = [];
      ItemBodyModel articleModel;
      for (var article in articles) {
        articleModel = ItemBodyModel(
          itemImage: article['urlToImage'],
          itemtitle: article['title'],
          itemSubTitle: article['description'],
        );

        articleList.add(articleModel);
      }

      return articleList;
    } catch (e) {
      return [];
    }
  }
}
