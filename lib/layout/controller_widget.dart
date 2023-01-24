import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:mining_crafter/global/global_game_reference.dart';
import 'package:mining_crafter/global/player_data.dart';
import 'package:mining_crafter/widgets/controller_button_widget.dart';

class ControllerWidget extends StatelessWidget {
  const ControllerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    PlayerData playerData =
        GlobalGameReference.instance.gameReference.worldData.playerData;
    return Positioned(
      left: 20,
      bottom: 100,
      child: Row(
        children: [
          ControllerButtonWidget(
              path: 'assets/controller/left_button.png',
              onPressed: () {
                playerData.componentMotionState =
                    ComponentMotionState.walkingLeft;
              }),
          ControllerButtonWidget(
              path: 'assets/controller/center_button.png', onPressed: () {}),
          ControllerButtonWidget(
              path: 'assets/controller/right_button.png',
              onPressed: () {
                playerData.componentMotionState =
                    ComponentMotionState.walkingRight;
              }),
        ],
      ),
    );
  }
}
