import 'package:flame/components.dart';
import 'package:flame/flame.dart';
import 'package:flame/sprite.dart';
import 'package:mining_crafter/global/global_game_reference.dart';
import 'package:mining_crafter/global/player_data.dart';

class PlayerComponent extends SpriteAnimationComponent {
  final double speed = 5;
  @override
  Future<void> onLoad() async {
    super.onLoad();
    SpriteSheet playerSpriteSheet = SpriteSheet(
        image: await Flame.images
            .load('sprite_sheets/player/player_walking_sprite_sheet.png'),
        srcSize: Vector2.all(60));

    animation = playerSpriteSheet.createAnimation(row: 0, stepTime: 0.2);
    size = Vector2(100, 100);
    position = Vector2(100, 400);
  }

  @override
  void update(double dt) {
    super.update(dt);
    // Moving Left
    if (GlobalGameReference
            .instance.gameReference.worldData.playerData.componentMotionState ==
        ComponentMotionState.walkingLeft) {
      position.x -= this.speed;
    }
    // Moving Right
    if (GlobalGameReference
            .instance.gameReference.worldData.playerData.componentMotionState ==
        ComponentMotionState.walkingRight) {
      position.x += this.speed;
    }
  }
}

/*
GlobalGameReference.instance.gameReference - its like being inside in main game
from worldData we have access to playerData and inside of it we have componentMotionState 
*/