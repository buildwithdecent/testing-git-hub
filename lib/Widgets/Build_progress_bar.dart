import 'package:flutter/material.dart';

class BuildProgressBar extends StatelessWidget {
  final bool active;

  const BuildProgressBar({super.key, this.active = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 48,
      height: 6,
      decoration: BoxDecoration(
        color: active ? Colors.blue : Colors.grey.shade300,
        borderRadius: BorderRadius.circular(2),
      ),
    );
  }
}
