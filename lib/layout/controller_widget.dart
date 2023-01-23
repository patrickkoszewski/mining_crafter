import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:mining_crafter/widgets/controller_button_widget.dart';

class ControllerWidget extends StatelessWidget {
  const ControllerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 20,
      bottom: 100,
      child: Row(
        children: [
          ControllerButtonWidget(
              path: 'assets/controller/left_button.png',
              onPressed: () {
                log('left button pressed');
              }),
          ControllerButtonWidget(
              path: 'assets/controller/center_button.png',
              onPressed: () {
                log('center button pressed');
              }),
          ControllerButtonWidget(
              path: 'assets/controller/right_button.png',
              onPressed: () {
                log('right button pressed');
              }),
        ],
      ),
    );
  }
}
