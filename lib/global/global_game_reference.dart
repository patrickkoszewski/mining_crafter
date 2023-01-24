import 'package:get/get.dart';
import 'package:mining_crafter/main_game.dart';

class GlobalGameReference {
  late MainGame gameReference;

// access to main_game.dart globbaly
  static GlobalGameReference get instance {
    return Get.put(GlobalGameReference());
  }
}
