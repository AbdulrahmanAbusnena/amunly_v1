import 'package:flutter/material.dart';

class GoogleButton extends StatefulWidget {
  final String text;
  final VoidCallback ontap;
  const GoogleButton({super.key, required this.text, required this.ontap});

  @override
  State<GoogleButton> createState() => _GoogleButtonState();
}

class _GoogleButtonState extends State<GoogleButton> {
  final bool isHovered = true;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        width: 280,
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
          border: Border.all(
            color: isHovered ? Colors.black87 : Colors.black,
            width: 1,
          ),
        ),
        child: Row(
          children: [
            Image.asset('assets/amly.png', width: 20),
            Text('Log in with Google'),
          ],
        ),
      ),
    );
  }
}
