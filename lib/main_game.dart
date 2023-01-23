import 'package:flame/game.dart';
import 'package:mining_crafter/components/player_component.dart';
import 'package:mining_crafter/global/world_data.dart';

class MainGame extends FlameGame {
  final WorldData worldData;

  MainGame({required this.worldData});
  @override
  Future<void> onLoad() async {
    super.onLoad();
    add(PlayerComponent());
  }
}
