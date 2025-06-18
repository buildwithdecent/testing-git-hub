import 'package:flutter/material.dart';

class BaseButton extends StatelessWidget {
  final IconData? icon;
  final String text;
  final Color buttonColor;
  final Color textColor;
  final double fontsize;
  final Color? borderColor;
  final VoidCallback onPressed;
  final bool iconShow;

  const BaseButton({
    super.key,
    this.icon,
    required this.text,
    required this.buttonColor,
    required this.textColor,
    required this.fontsize,
    this.borderColor,
    required this.onPressed,
    this.iconShow = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      child: ElevatedButton.icon(
        onPressed: onPressed,
        icon: iconShow && icon != null ? Icon(icon, color: textColor) : SizedBox.shrink(),
        label: Text(
          text,
          style: TextStyle(
            fontSize: fontsize,
            color: textColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        style: ElevatedButton.styleFrom(
          minimumSize: Size(double.infinity, 50),
          backgroundColor: buttonColor,
          elevation: 4,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
            side: borderColor != null
                ? BorderSide(color: borderColor!)
                : BorderSide.none,
          ),
        ),
      ),
    );
  }
}
