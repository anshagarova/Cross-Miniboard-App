import 'package:flutter/material.dart';

import 'widget/cross_miniboard.dart';

const int SIDE = 5;

void main() {
  runApp(const CrossMiniboardApp());
}

class CrossMiniboardApp extends StatelessWidget {
  const CrossMiniboardApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CrossMiniboard(),
            ],
          ),
        ),
      ),
    );
  }
}
