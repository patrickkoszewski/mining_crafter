import 'package:flame/game.dart';
import 'package:mining_crafter/components/player_component.dart';

class MainGame extends FlameGame {
  @override
  Future<void> onLoad() async {
    super.onLoad();
    add(PlayerComponent());
  }
}
