import 'package:get/get.dart';

class GetMyBuilderState extends GetxController {
  int getBuilderCounter = 0;
  void increaseCounter() {
    getBuilderCounter++;
    update();
  }
}
