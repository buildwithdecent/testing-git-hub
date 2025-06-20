import 'package:flutter/material.dart';

class PasswordInputField extends StatefulWidget {
  final TextEditingController controller;

  const PasswordInputField({super.key, required this.controller});

  @override
  State<PasswordInputField> createState() => _PasswordInputFieldState();
}

class _PasswordInputFieldState extends State<PasswordInputField> {
  bool _obscureText = true;
  bool _isLengthValid = false;
  bool _isAlphaNumValid = false;

  @override
  void initState() {
    super.initState();
    widget.controller.addListener(_validate);
  }

  void _validate() {
    final text = widget.controller.text;
    setState(() {
      _isLengthValid = text.length > 8;
      _isAlphaNumValid = RegExp(r'^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]+$').hasMatch(text);
    });
  }

  @override
  void dispose() {
    widget.controller.removeListener(_validate);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextField(
          controller: widget.controller,
          obscureText: _obscureText,
          enableSuggestions: false,
          autocorrect: false,
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            suffixIcon: GestureDetector(
              onTap: () => setState(() => _obscureText = !_obscureText),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    _obscureText ? 'Show' : 'Hide',
                    style: const TextStyle(color: Colors.blue, fontSize: 16),
                  ),
                  const SizedBox(width: 8),
                ],
              ),
            ),

            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide.none,
            ),
          ),
        ),
        const SizedBox(height: 10),
        _buildCheck(_isLengthValid, "More than 8 character"),
        _buildCheck(_isAlphaNumValid, "Alphabet and number only"),
      ],
    );
  }

  Widget _buildCheck(bool valid, String label) {
    return Row(
      children: [
        Icon(
          valid ? Icons.check_box : Icons.check_box_outline_blank,
          color: valid ?Color(0xFF114CA2) : Colors.grey,
          size: 18,
        ),
        const SizedBox(width: 6),
        Text(
          label,
          style: TextStyle(color: valid ? Colors.black : Colors.grey),
        ),
      ],
    );
  }
}
