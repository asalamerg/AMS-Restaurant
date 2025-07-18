import 'package:flutter/material.dart';

class DefaultButton extends StatelessWidget {
  final void Function()? onPressed;
  final String title;

  const DefaultButton({
    super.key,
    required this.onPressed,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
        elevation: 3,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        fixedSize: Size(MediaQuery.of(context).size.width * 0.85, 50),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      ),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w600,
          color: Color(0xFFE63946),
        ),
      ),
    );
  }
}
