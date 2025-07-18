
import 'package:flutter/material.dart';

class DefaultTextFormField extends StatelessWidget {
  final String title;
  final TextEditingController controller;
  final String? Function(String?)? validator;

  const DefaultTextFormField({
    super.key,
    required this.title,
    required this.controller,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
      child: TextFormField(
        style: Theme.of(context).textTheme.bodyLarge?.copyWith(color: Colors.white),
        controller: controller,
        validator: validator,
        decoration: InputDecoration(
          hintText: title,
          hintStyle: const TextStyle(color: Colors.white),
          filled: true,
          fillColor: Colors.black12,
          contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(color: Colors.white24),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(color: Colors.amber, width: 2),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(color: Colors.redAccent, width: 1.5),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(color: Colors.red, width: 2),
          ),
        ),
      ),
    );
  }
}
