import 'package:flutter/material.dart';

class build_grid extends StatelessWidget {
  const build_grid({
    super.key,
    required this.size,
  });

  final int size;

  @override
  Widget build(BuildContext context) {
    final List<List<String?>> gridContent = List.generate(size, (rowIndex) {
      return List.generate(size, (colIndex) {
        if (colIndex == 0) {
          return rowIndex == size - 1 ? '${rowIndex + 1}A' : '${rowIndex + 1}';
        }
        if (rowIndex == size - 1) {
          return String.fromCharCode(65 + colIndex);
        }
        return null;
      });
    });

    return Column(
      children: List.generate(size, (rowIndex) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(size, (colIndex) {
            final cellContent = gridContent[rowIndex][colIndex];
            bool isPartOfXPattern = (rowIndex == colIndex || rowIndex + colIndex == size - 1);

            return Container(
              margin: const EdgeInsets.all(5.0),
              color: isPartOfXPattern ? Colors.black : Colors.grey,
              width: 40.0,
              height: 40.0,
              alignment: Alignment.center,
              child: cellContent != null
                  ? Text(
                      cellContent,
                      style: const TextStyle(
                        fontWeight: FontWeight.normal,
                        color: Colors.white,
                      ),
                    )
                  : null,
            );
          }),
        );
      }),
    );
  }
}
