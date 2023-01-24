import 'package:mining_crafter/resources/blocks.dart';
import 'package:mining_crafter/utils/constants.dart';

class ChunkGenerationMethods {
  static ChunkGenerationMethods get instance {
    return ChunkGenerationMethods();
  }

  //null chunk
  List<List<Blocks?>> generateNullChunk() {
    return List.generate(
      chunkHeight,
      (index) => List.generate(chunkWidth, (index) => null),
    );
  }

  //Chunk generator
  List<List<Blocks?>> generateChunk() {
    List<List<Blocks?>> chunk = generateNullChunk();

    /*the 5th y level is grass
    .asMap() for geting the index,  
    .forEach() for each object in side of list
    */
    chunk.asMap().forEach((int indexOfRowOfBlocks, List<Blocks?> rowOfBlocks) {
      if (indexOfRowOfBlocks == 5) {
        /* Dry Run: [null, null, null, null, null]  */
        rowOfBlocks.asMap().forEach((int index, Blocks? block) {
          chunk[5][index] = Blocks.grass;
        });
      }
      if (indexOfRowOfBlocks >= 6) {
        /* Dry Run: [null, null, null, null, null]  */
        rowOfBlocks.asMap().forEach((int index, Blocks? block) {
          chunk[indexOfRowOfBlocks][index] = Blocks.dirt;
        });
      }
    });

    return chunk;
  }
}


/*


chunk = [

  [Air, air, air,],
  [Blocks.grass, Blocks.dirt],
  [],
  [],
  [],
  [],
  [Blocks.stone, Blocks.stone, Blocks.ironOre],
  [],
  [],
  [],
  [],
  [],



]


*/