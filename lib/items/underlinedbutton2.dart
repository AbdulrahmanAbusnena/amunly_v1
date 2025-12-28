import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Underlinedbutton2 extends StatefulWidget {
  final String text;
  final VoidCallback onpressed;
  final Color color;
  final bool underline;
  const Underlinedbutton2({
    super.key,
    required this.color,
    required this.underline,
    required this.text,
    required this.onpressed,
  });

  @override
  State<Underlinedbutton2> createState() => _Underlinedbutton2State();
}

class _Underlinedbutton2State extends State<Underlinedbutton2> {
  bool isHovered = false;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: (_) => setState(() => isHovered = true),
      onExit: (_) => setState(() => isHovered = false),
      child: GestureDetector(
        onTap: widget.onpressed,
        child: AnimatedDefaultTextStyle(
          duration: const Duration(milliseconds: 150),
          style: GoogleFonts.montserrat(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: isHovered
                // ignore: deprecated_member_use
                ? widget.color.withOpacity(0.85)
                : widget.color,
            decoration: widget.underline && isHovered
                ? TextDecoration.underline
                : widget.underline
                ? TextDecoration.underline
                : TextDecoration.none,
          ),
          child: Text(widget.text),
        ),
      ),
    );
  }
}
