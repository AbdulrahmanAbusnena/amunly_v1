import 'package:e_tracker/items/underlinedbutton.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 800) {
          return Scaffold(
            backgroundColor: const Color(0xFFEFF6FF),
            body: SizedBox.expand(
              child: Center(
                child: Column(
                  children: [
                    SizedBox(height: 250),
                    Text(
                      "Log In",
                      style: GoogleFonts.mooli(
                        fontSize: 40,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'new to this site?',
                          style: GoogleFonts.montserrat(fontSize: 16),
                        ),
                        SizedBox(width: 5),
                        UnderlinedButton(
                          text: 'Sign up',
                          onpressed: () => context.go('/signup'),
                          color: const Color(0xFF2563EB),
                          underline: true,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        } else {
          return Scaffold();
        }
      },
    );
  }
}
