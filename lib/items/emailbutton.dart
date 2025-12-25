import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Emailbutton extends StatefulWidget {
  final String text;
  final VoidCallback onTap;
  const Emailbutton({super.key, required this.onTap, required this.text});

  @override
  State<Emailbutton> createState() => _EmailbuttonState();
}

class _EmailbuttonState extends State<Emailbutton> {
  bool isHovered = false;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: (_) => setState(() => isHovered = true),
      onExit: (_) => setState(() => isHovered = false),
      child: GestureDetector(
        onTap: widget.onTap,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 150),
          height: 65,
          width: 290,
          padding: const EdgeInsets.symmetric(horizontal: 16),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(5),
            border: Border.all(
              color: isHovered ? Colors.black87 : Colors.black,
              width: 0.5,
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                widget.text,
                style: GoogleFonts.montserrat(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Colors.black87,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
