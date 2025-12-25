import 'package:e_tracker/items/underlinedbutton.dart';
import 'package:e_tracker/items/underlineinput.dart';
import 'package:e_tracker/themes/buttons.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
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
                    const SizedBox(height: 200),
                    SizedBox(
                      width: 300,
                      height: 80,
                      child: Stack(
                        children: [
                          Center(
                            child: Text(
                              "Sign Up",
                              style: GoogleFonts.mooli(
                                fontSize: 40,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          Positioned(
                            left: 0,
                            top: 0,
                            child: MouseRegion(
                              cursor: SystemMouseCursors.click,
                              child: GestureDetector(
                                onTap: () {
                                  context.go('/login');
                                },
                                child: Image.asset(
                                  'assets/close.png',
                                  width: 30,
                                  height: 30,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                    SizedBox(
                      width: 250,
                      child: Column(
                        children: const [
                          Underlineinput(label: 'First name'),
                          SizedBox(height: 10),
                          Underlineinput(label: 'Last name'),
                          SizedBox(height: 10),
                          Underlineinput(label: 'Email'),
                          SizedBox(height: 10),
                          Underlineinput(label: 'Password', obscureText: true),
                        ],
                      ),
                    ),
                    const SizedBox(height: 30),
                    ElevatedButton(
                      onPressed: () {},
                      style: buttonTheme2,
                      child: Text(
                        'Sign Up',
                        style: GoogleFonts.montserrat(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Already a member?',
                          style: GoogleFonts.montserrat(color: Colors.black),
                        ),
                        const SizedBox(width: 5),
                        UnderlinedButton(
                          color: Colors.black,
                          underline: false,
                          text: 'Log In',
                          onpressed: () {
                            context.go('/login');
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        } else {
          return const Scaffold();
        }
      },
    );
  }
}
