import 'package:get/get.dart';

class NavigatorController extends GetxController {
  var navContainer = {"width":0.0,"open":false}.obs; // initial width

  void updateWidth(double width) {
    navContainer.value = {"width":width,"open":!(navContainer["open"] as bool)};
  }
}