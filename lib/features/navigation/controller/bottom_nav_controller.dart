import 'package:get/get.dart';

class BottomNavController extends GetxController {
  // Track which tab is selected
  RxInt currentIndex = 0.obs;

  void changeTab(int index) {
    currentIndex.value = index;
  }
}
