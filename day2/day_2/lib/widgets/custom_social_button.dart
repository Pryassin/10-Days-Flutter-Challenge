import 'package:flutter/material.dart';

class CustomSocialButton extends StatelessWidget {
  final String text;
  final String imagePath;
  final VoidCallback? onPressed;

  const CustomSocialButton({
    super.key,
    required this.text,
    required this.imagePath,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: OutlinedButton.icon(
        onPressed: onPressed ?? () {},
        label: Text(
          text,
          style: const TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        icon: Image.asset(imagePath, width: 20, height: 20),
        style: OutlinedButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 15),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          backgroundColor: Colors.white,
          side: const BorderSide(color: Colors.grey), // Added side for better visibility
        ),
      ),
    );
  }
}
