import 'package:dio/dio.dart';
import 'package:review_mobile_app/api_url.dart';

class ApiServices {
    static movieInfo() async {
    try {
      Response response = await Dio().get(ApiUrl.movieInfoUrl);
      print("Lấy dữ liệu thành công " + response.statusCode.toString());
      print(response.data);
      return response.data;
    } on Exception catch (e) {
      // TODO
      print("Lỗi lấy dữ liệu " + e.toString());
    }
  }
}
