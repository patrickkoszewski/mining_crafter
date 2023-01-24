import 'package:flame/game.dart';
import 'package:get/get.dart';
import 'package:mining_crafter/components/block_component.dart';
import 'package:mining_crafter/components/player_component.dart';
import 'package:mining_crafter/global/global_game_reference.dart';
import 'package:mining_crafter/global/world_data.dart';
import 'package:mining_crafter/resources/blocks.dart';
import 'package:mining_crafter/utils/chunk_generation_methods.dart';

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

    print(ChunkGenerationMethods.instance.generateChunk());

    add(playerComponent);
    renderChunk(ChunkGenerationMethods.instance.generateChunk());
  }

  /* 
  going thru yIndex / xIndex 
  chcecking if block not null and if not adding BlockComponent
  */
  void renderChunk(List<List<Blocks?>> chunk) {
    chunk.asMap().forEach((int yIndex, List<Blocks?> rowOfBlocks) {
      rowOfBlocks.asMap().forEach((int xIndex, Blocks? block) {
        if (block != null) {
          add(BlockComponent(
              block: block,
              blockIndex: Vector2(xIndex.toDouble(), yIndex.toDouble())));
        }
      });
    });
  }
}
