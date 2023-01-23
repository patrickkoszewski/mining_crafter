import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:mining_crafter/global/world_data.dart';
import 'package:mining_crafter/layout/controller_widget.dart';
import 'package:mining_crafter/main_game.dart';

class GameLayout extends StatelessWidget {
  const GameLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // this is the main game
        GameWidget(game: MainGame(worldData: WorldData())),

        // Hud
        const ControllerWidget(),
      ],
    );
  }
}
