import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:mining_crafter/layout/game_layout.dart';
import 'package:mining_crafter/main_game.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: GameLayout(),
    ),
  );
}
