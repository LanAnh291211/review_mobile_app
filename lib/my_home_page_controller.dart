import 'package:get/get.dart';
import 'package:review_mobile_app/api_services.dart';

class MyHomePageController extends GetxController {
  Future<void> getMovieInfo() async {
    await ApiServices.movieInfo();
  }

  @override
  Future<void> onInit() async {
    // TODO: implement onInit
    super.onInit();
    await getMovieInfo();
  }
}
