import 'package:flame/components.dart';
import 'package:mining_crafter/resources/blocks.dart';
import 'package:mining_crafter/utils/game_methods.dart';

class BlockComponent extends SpriteComponent {
  final Blocks block;

  BlockComponent({required this.block});

  @override
  Future<void> onLoad() async {
    super.onLoad();
    size = GameMethods.instance.blockSize;
    sprite = await GameMethods.instance.getSpriteFromBlock(block);
  }
}
