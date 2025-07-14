import 'package:flutter/material.dart';

class BackButton extends StatelessWidget {
  final VoidCallback onPressed;
  final IconData icon;
  final Color iconColor;
  final Color backgroundColor;
  final double borderRadius;

  const BackButton({
    super.key,
    required this.onPressed,
    this.icon = Icons.arrow_back,
    this.iconColor = Colors.black,
    this.backgroundColor = const Color(0xFFF7F5FA),
    this.borderRadius = 12.0,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      child: IconButton(
        icon: Icon(icon, color: iconColor),
        onPressed: onPressed,
        padding: EdgeInsets.zero,
        constraints: BoxConstraints(),
      ),
    );
  }
}
