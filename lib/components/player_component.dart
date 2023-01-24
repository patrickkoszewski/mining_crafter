import 'package:flame/components.dart';
import 'package:flame/flame.dart';
import 'package:flame/sprite.dart';
import 'package:mining_crafter/global/global_game_reference.dart';
import 'package:mining_crafter/global/player_data.dart';

class PlayerComponent extends SpriteAnimationComponent {
  final Vector2 playerDimensions = Vector2.all(60);
  final double stepTime = 0.3;
  final double speed = 5;
  // for getting a track of with side we are facing
  bool isFacingRight = true;
  late SpriteSheet playerWalkingSpritesheet;
  late SpriteSheet playerIdleSpritesheet;

  late SpriteAnimation walkingAnimation =
      playerWalkingSpritesheet.createAnimation(row: 0, stepTime: stepTime);

  late SpriteAnimation idleAnimation =
      playerIdleSpritesheet.createAnimation(row: 0, stepTime: stepTime);

  @override
  Future<void> onLoad() async {
    super.onLoad();
    playerWalkingSpritesheet = SpriteSheet(
        image: await Flame.images
            .load('sprite_sheets/player/player_walking_sprite_sheet.png'),
        srcSize: playerDimensions);
    playerIdleSpritesheet = SpriteSheet(
        image: await Flame.images
            .load('sprite_sheets/player/player_idle_sprite_sheet.png'),
        srcSize: playerDimensions);
    size = Vector2(100, 100);
    position = Vector2(100, 400);

    animation = idleAnimation;
  }

  @override
  void update(double dt) {
    super.update(dt);
    movementLogic();
  }

  void movementLogic() {
    // Moving Left
    if (GlobalGameReference
            .instance.gameReference.worldData.playerData.componentMotionState ==
        ComponentMotionState.walkingLeft) {
      position.x -= this.speed;
      if (isFacingRight) {
        flipHorizontallyAroundCenter();
        isFacingRight = false;
      }

      animation = walkingAnimation;
    }
    // Moving Right
    if (GlobalGameReference
            .instance.gameReference.worldData.playerData.componentMotionState ==
        ComponentMotionState.walkingRight) {
      position.x += this.speed;
      // !isFacingRight == if its not facing right
      if (!isFacingRight) {
        flipHorizontallyAroundCenter();
        isFacingRight = true;
      }

      animation = walkingAnimation;
    }
    if (GlobalGameReference
            .instance.gameReference.worldData.playerData.componentMotionState ==
        ComponentMotionState.idle) {
      animation = idleAnimation;
    }
  }
}

/*
GlobalGameReference.instance.gameReference - its like being inside in main game
from worldData we have access to playerData and inside of it we have componentMotionState 
*/