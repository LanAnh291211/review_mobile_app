import 'package:dio/dio.dart';
import 'package:review_mobile_app/api_url.dart';

class ApiServices {
  static Future<void> movieInfo() async {
    Response response;
    var dio = Dio();
    try {
      print("Kien");
      response = await dio.get(ApiUrl.movieInfoUrl, options: Options(contentType: "application/json;charset=utf-8"));
      print(response.statusCode);
    } catch (e) {
      print("asafsdfdsfsdf" + e.toString());
    }
  }
}
