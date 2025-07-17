
import 'package:flutter/material.dart';

class DashBoardReusable extends StatelessWidget{
  final String message;
  final String? buttonText;
  final VoidCallback? onButtonPressed;
  final IconData? icon;

  const DashBoardReusable({
    super.key,
    required this.message,
    this.buttonText,
    this.onButtonPressed,
    this.icon,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 90, vertical: 27),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: const Color(0xFFF9FBFC),
        width: 8.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 1,
            offset: Offset(0, 1),
          )
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          if (icon != null)
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.grey.shade100,
                shape: BoxShape.circle,
              ),
              child: Icon(icon, size: 40, color: Colors.grey),
            ),
          const SizedBox(height: 16),
          Text(
            message,
            style: const TextStyle(
              fontSize: 15,
              color: Colors.black87,
            ),
            textAlign: TextAlign.center,
          ),
          if (buttonText != null && onButtonPressed != null) ...[
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: onButtonPressed,
              style: ElevatedButton.styleFrom(
                minimumSize: Size(500, 40),
                backgroundColor: const Color(0xFFE5EDFF),
                foregroundColor: const Color(0xFF114CA2),
                elevation: 0,
                padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24),
                ),
              ),
              child: Text(
                overflow: TextOverflow.ellipsis,
                softWrap: false,
                textAlign: TextAlign.center,
                buttonText!,
                style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500,),
              ),
            ),
          ]
        ],
      ),
    );


  }

}