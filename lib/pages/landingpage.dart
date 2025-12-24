import 'package:flutter/material.dart';

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
        if (constraints.maxWidth > 600) {
          return Scaffold();
        }
        // Mobile
        else {
          return Scaffold();
        }
      },
    );
  }
}
