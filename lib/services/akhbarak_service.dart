import 'package:dio/dio.dart';

class AkhbarakService {
  // final Dio dio;
  // AkhbarakService(this.dio);

  // momken a3melaha zy el oula bardo w mast5dmsh el construtor
  final Dio dio = Dio();

  void getAkhbarak() async {
    final response = await dio.get(
        'https://newsapi.org/v2/top-headlines?country=eg&apiKey=88e86952e1c746cea291f7f9e12aa4e6');
    print(response);
  }
}


