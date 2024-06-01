import 'package:get/get.dart';

class NavigatorController extends GetxController {
  var Navcontainer = {"width":0.0,"open":false}.obs; // initial width

  void updateWidth(double width) {
    Navcontainer.value = {"width":width,"open":!(Navcontainer["open"] as bool)};
  }
}