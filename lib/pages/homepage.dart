import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // get screen size info

    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 600) {
          return Scaffold(body: Center(child: Text("Hey there")));
        } else {
          return Scaffold(body: Center());
        }
      },
    );
  }
}
