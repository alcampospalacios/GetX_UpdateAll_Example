import 'package:get/get.dart';

class MainController extends GetxController {
  int count = 0;

  updateCount() {
    count++;
    update(['idCount']);
  }
}
