import 'dart:developer';

import 'package:fast_noise/fast_noise.dart';
import 'package:mining_crafter/resources/blocks.dart';
import 'package:mining_crafter/utils/constants.dart';
import 'package:mining_crafter/utils/game_methods.dart';

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

    List<List<double>> rawNoise = noise2(
      chunkWidth,
      1,
      noiseType: NoiseType.Perlin,
      frequency: 0.05,
      seed: 9863246,
    );

    List<int> yValues = getYValuesFromRawNoise(rawNoise);

    yValues.asMap().forEach((int index, int value) {
      chunk[value + GameMethods.instance.freeArea][index] = Blocks.grass;
    });

    return chunk;
  }

  List<int> getYValuesFromRawNoise(List<List<double>> rawNoise) {
    List<int> yValues = [];

    rawNoise.asMap().forEach((int index, List<double> value) {
      /*method for making 0.1 to 1 etc. 
      + abs() afor changing negative value to positive ones */
      yValues.add((value[0] * 10).toInt().abs());
    });

    return yValues;
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