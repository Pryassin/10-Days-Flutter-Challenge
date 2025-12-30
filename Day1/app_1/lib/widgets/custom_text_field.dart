import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final String title;

  const CustomTextField({
    super.key,
    required this.hintText,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: const TextStyle(fontWeight: FontWeight.w500)),
        const SizedBox(height: 4),
        TextField(
          decoration: InputDecoration(
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(
                width: 2,
                color: Color.fromARGB(255, 100, 141, 219),
              ),
            ),
            border: OutlineInputBorder(
              gapPadding: 4,
              borderRadius: BorderRadius.circular(12),
            ),
            contentPadding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
            hintText: hintText,
            hintStyle: const TextStyle(
              color: Color.fromARGB(104, 121, 103, 103),
            ),
          ),
        ),
      ],
    );
  }
}
