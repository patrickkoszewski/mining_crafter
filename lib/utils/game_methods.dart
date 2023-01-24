import 'package:flame/flame.dart';
import 'package:flame/game.dart';
import 'package:flame/sprite.dart';
import 'package:flutter/cupertino.dart';
import 'package:mining_crafter/resources/blocks.dart';
import 'package:mining_crafter/utils/constants.dart';

/*
its for readability and transparancy so we know where 
are this functions that we created coming from
*/
class GameMethods {
  static GameMethods get instance {
    return GameMethods();
  }

  //Method that gives as a block size
  Vector2 get blockSize {
    return Vector2.all(getScreenSize().width / chunkWidth);
  }

  //Function that gives as a screen size
  Size getScreenSize() {
    return MediaQueryData.fromWindow(WidgetsBinding.instance.window).size;
  }

  //Block Sprite Sheet
  Future<SpriteSheet> getBlockSpriteSheet() async {
    return SpriteSheet(
        image: await Flame.images
            .load('sprite_sheets/blocks/block_sprite_sheet.png'),
        srcSize: Vector2.all(60));
  }

  //Function that gives as sprites from enum we provided
  Future<Sprite> getSpriteFromBlock(Blocks block) async {
    SpriteSheet spriteSheet = await getBlockSpriteSheet();
    return spriteSheet.getSprite(0, block.index);
  }
}
