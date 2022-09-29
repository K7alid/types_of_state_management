import 'package:get/get.dart';

class GetXAndOBX extends GetxController {
  var getXCounter = 0.obs;
  var oBXCounter = 0.obs;
  void increaseGetXCounter() {
    getXCounter++;
  }

  void increaseOBXCounter() {
    oBXCounter++;
  }
}
