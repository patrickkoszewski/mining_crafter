import 'package:flame/game.dart';
import 'package:get/get.dart';
import 'package:mining_crafter/components/block_component.dart';
import 'package:mining_crafter/components/player_component.dart';
import 'package:mining_crafter/global/global_game_reference.dart';
import 'package:mining_crafter/global/world_data.dart';
import 'package:mining_crafter/resources/blocks.dart';

class MainGame extends FlameGame {
  final WorldData worldData;

  MainGame({required this.worldData}) {
    globalGameReference.gameReference = this;
  }

  /* 
  access to main_game.dart globbaly
  we can change thing here from child widgets
  */
  GlobalGameReference globalGameReference = Get.put(GlobalGameReference());

  PlayerComponent playerComponent = PlayerComponent();

  @override
  Future<void> onLoad() async {
    super.onLoad();

    add(playerComponent);
    add(BlockComponent(block: Blocks.cobblestone));
  }
}
