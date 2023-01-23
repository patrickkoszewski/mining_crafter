import 'package:flame/components.dart';
import 'package:flame/game.dart';

class MainGame extends FlameGame {
  @override
  Future<void> onLoad() async {
    super.onLoad();
    add(PlayerComponent());
  }
}

class PlayerComponent extends SpriteComponent {
  @override
  Future<void> onLoad() async {
    super.onLoad();

    sprite = await Sprite.load('sprite_picture.png');
    size = Vector2(100, 100);
  }

  @override
  void update(double dt) {
    super.update(dt);
    position.x += 10;
  }

  @override
  void onGameResize(Vector2 newScreenSize) {
    super.onGameResize(newScreenSize);
    size = newScreenSize / 10;
  }
}
