import 'package:flutter/material.dart';

class ThemeButton extends StatelessWidget {
  // 1
  const ThemeButton({required this.changeThemeMode, super.key});

  // 2
  final Function changeThemeMode;

  @override
  Widget build(BuildContext context) {
    // 3
    final isBright = Theme.of(context).brightness == Brightness.light;
    // 4
    return IconButton(
      onPressed: () => changeThemeMode(!isBright),
      icon: isBright
          ? const Icon(Icons.dark_mode_outlined)
          : const Icon(Icons.light_mode_outlined),
    );
  }
}
