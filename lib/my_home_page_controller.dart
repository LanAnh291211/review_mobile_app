import 'package:get/get.dart';
import 'package:review_mobile_app/api_services.dart';
import 'package:review_mobile_app/item_popular.dart';

class PoppularController extends GetxController {
  Future<List<ItemPopular>> getMovieInfo() async {
    Map<String, dynamic> data = await ApiServices.movieInfo();
    List<Map<String, dynamic>> listJsonInfoMovie = data['results'];
    return listJsonInfoMovie.map((movieInfoJson) => ItemPopular.fromJson(movieInfoJson)).toList(); // quet tung phan trong listJsonInfoMovie;
  }
}
