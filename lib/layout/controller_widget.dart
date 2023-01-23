import 'package:flutter/material.dart';
import 'package:mining_crafter/widgets/controller_button_widget.dart';

class ControllerWidget extends StatelessWidget {
  const ControllerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      child: Align(
        alignment: Alignment.bottomLeft,
        child: Row(
          children: const [
            ControllerButtonWidget(path: 'assets/controller/left_button.png'),
            ControllerButtonWidget(path: 'assets/controller/center_button.png'),
            ControllerButtonWidget(path: 'assets/controller/right_button.png'),
          ],
        ),
      ),
    );
  }
}
