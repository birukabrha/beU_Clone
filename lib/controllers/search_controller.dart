import 'package:get/get.dart';

class SearchController extends GetxController {
  var isSearch = false.obs;
  toogleSearch() {
    isSearch.value = !isSearch.value;
  }
}
