import 'dart:developer';

import 'package:flutter/material.dart';

class ControllerButtonWidget extends StatefulWidget {
  final String path;
  const ControllerButtonWidget({super.key, required this.path});

  @override
  State<ControllerButtonWidget> createState() => _ControllerButtonWidgetState();
}

class _ControllerButtonWidgetState extends State<ControllerButtonWidget> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: GestureDetector(
        onTap: () {
          log('This widget has been pressed');
        },
        child: SizedBox(
            height: screenSize.height / 17,
            width: screenSize.width / 17,
            child: Image.asset(widget.path)),
      ),
    );
  }
}
