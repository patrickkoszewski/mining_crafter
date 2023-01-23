import 'package:flame/game.dart';
import 'package:get/get.dart';
import 'package:mining_crafter/components/player_component.dart';
import 'package:mining_crafter/global/global_game_reference.dart';
import 'package:mining_crafter/global/world_data.dart';

class MainGame extends FlameGame {
  final WorldData worldData;

  MainGame({required this.worldData});

  // access to main_game.dart globbaly
  GlobalGameReference globalGameReference = Get.put(GlobalGameReference());

  @override
  Future<void> onLoad() async {
    super.onLoad();
    // access to main_game.dart globbaly
    globalGameReference.gameReference = this;
    add(PlayerComponent());
  }
}
