import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Landingpage extends StatefulWidget {
  const Landingpage({super.key});

  @override
  State<Landingpage> createState() => _LandingpageState();
}

class _LandingpageState extends State<Landingpage> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        // Web
        if (constraints.maxWidth > 800) {
          return Scaffold(
            body: Container(
              padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset('asset/close.png', height: 40),
                      SizedBox(width: 10),
                      Text(
                        'AMUNLY',
                        style: GoogleFonts.mooli(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        }
        // Mobile
        else {
          return Scaffold();
        }
      },
    );
  }
}
