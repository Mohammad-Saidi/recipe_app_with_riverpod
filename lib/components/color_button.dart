import 'package:flutter/material.dart';
import 'package:recipe_app_with_riverpod/constants.dart';

class ColorButton extends StatelessWidget {
  const ColorButton(
      {required this.changeColor, required this.colorSelected, super.key});

  // 2
  final void Function(int) changeColor;
  final ColorSelection colorSelected;

  @override
  Widget build(BuildContext context) {
    // 3

    return PopupMenuButton(
      icon: Icon(
        Icons.opacity_outlined,
        color: Theme.of(context).colorScheme.onSurfaceVariant,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),

      // 5
      itemBuilder: (context) {
        // 6
        return List.generate(

          ColorSelection.values.length,
          (index) {
            final currentColor = ColorSelection.values[index];
            // 7
            return PopupMenuItem(
              value: index,
              enabled: currentColor != colorSelected,
              child: Wrap(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Icon(
                      Icons.opacity_outlined,
                      color: currentColor.color,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(currentColor.label),
                  ),
                ],
              ),

            );
          },
        );
      },
      onSelected: changeColor,
    );
  }
}
