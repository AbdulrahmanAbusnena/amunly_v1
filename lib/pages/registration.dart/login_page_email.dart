import 'package:e_tracker/items/underlinedbutton.dart';
import 'package:e_tracker/items/underlinedbutton2.dart';
import 'package:e_tracker/items/underlineinput.dart';
import 'package:e_tracker/themes/buttons.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPageEmail extends StatefulWidget {
  const LoginPageEmail({super.key});

  @override
  State<LoginPageEmail> createState() => _LoginPageEmaiStatel();
}

class _LoginPageEmaiStatel extends State<LoginPageEmail> {
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
                    const SizedBox(height: 145),
                    SizedBox(
                      width: 250,
                      height: 80,
                      child: Stack(
                        children: [
                          Center(
                            child: Text(
                              "Log In",
                              style: GoogleFonts.mooli(
                                fontSize: 40,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ],
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
                          underline: false,
                        ),
                      ],
                    ),
                    const SizedBox(height: 30),
                    SizedBox(
                      width: 300,
                      child: Column(
                        children: const [
                          Underlineinput(label: 'Email'),
                          SizedBox(height: 15),
                          Underlineinput(label: 'Password', obscureText: true),
                        ],
                      ),
                    ),
                    SizedBox(height: 40),
                    Row(
                      children: [
                        SizedBox(width: 430),
                        Underlinedbutton2(
                          color: Colors.black,
                          underline: true,
                          text: 'Forgot Password?',
                          onpressed: () {},
                        ),
                      ],
                    ),
                    const SizedBox(height: 30),
                    ElevatedButton(
                      onPressed: () {},
                      style: buttonTheme3,
                      child: Text(
                        'Log In',
                        style: GoogleFonts.montserrat(
                          fontSize: 15,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    SizedBox(
                      width: 300,
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 5.0),
                        child: Center(
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              // Left horizontal line
                              Expanded(
                                child: Divider(
                                  indent: 1,
                                  endIndent: 1,
                                  color: Colors
                                      .grey, // Optional: customize the color
                                  thickness:
                                      1.0, // Optional: control the line thickness
                                ),
                              ),
                              // Text in the middle
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 10.0),
                                child: Text(
                                  "Or login with Google",
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              // Right horizontal line
                              Expanded(
                                child: Divider(
                                  height: 4,
                                  indent: 1,
                                  endIndent: 1,
                                  color: Colors
                                      .grey, // Optional: customize the color
                                  thickness:
                                      1.0, // Optional: control the line thickness
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 15),
                    MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: GestureDetector(
                        onTap: () {},
                        child: Image.asset(
                          'assets/google.png',
                          width: 35,
                          height: 35,
                        ),
                      ),
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
