import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:mining_crafter/main_game.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(GameWidget(game: MainGame()));
}
