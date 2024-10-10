import 'package:flutter/material.dart';

import '../main.dart';
import '../widget/build_grid.dart';
import 'error_display.dart';

class CrossMiniboard extends StatelessWidget {
  const CrossMiniboard({super.key});

  @override
  Widget build(BuildContext context) {
    try {
      if (!(SIDE % 2 != 0 && SIDE >= 1 && SIDE <= 7)) {
        throw Exception('Side must be an odd number between <1,7>');
      }
      return build_grid(size: SIDE);
    } catch (e) {
      return ErrorDisplay(errorMessage: e.toString().replaceFirst('Exception: ', ''));
    }
  }
}
