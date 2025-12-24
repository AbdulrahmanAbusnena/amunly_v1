import 'package:flutter/material.dart';

final buttonTheme1 = ElevatedButton.styleFrom(
  backgroundColor: const Color(0xFF60A5FA), // sky-blue
  foregroundColor: Colors.white,
  elevation: 0,
  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
  padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 14),
  minimumSize: const Size(70, 30),
  side: const BorderSide(color: Colors.white, width: 1),
);

final buttonTheme3 = ElevatedButton.styleFrom(
  backgroundColor: const Color.fromARGB(226, 118, 168, 127),
  foregroundColor: Colors.black,
  elevation: 0.0,
  minimumSize: const Size(330, 60),
  // side: const BorderSide(
  //   style: BorderStyle.solid,
  // ),
);
final buttonTheme2 = ElevatedButton.styleFrom(
  minimumSize: const Size(100, 45),
  backgroundColor: Colors.black,
  foregroundColor: Colors.white,
  elevation: 0.0,
);
final buttonTheme4 = ElevatedButton.styleFrom(
  backgroundColor: const Color.fromARGB(226, 118, 168, 127),
  foregroundColor: Colors.black,
  elevation: 0.0,
  minimumSize: const Size(270, 60),
  // side: const BorderSide(
  //   style: BorderStyle.solid,
  // ),
);
final buttonTheme5 = ElevatedButton.styleFrom(
  minimumSize: const Size(50, 45),
  backgroundColor: Colors.white,
  foregroundColor: Colors.black,
  elevation: 0.0,
);
