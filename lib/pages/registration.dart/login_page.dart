import 'package:e_tracker/items/emailbutton.dart';
import 'package:e_tracker/items/googlebutton.dart';
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
            body: Stack(
              children: [
                SizedBox.expand(
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

                        SizedBox(height: 20),
                        GoogleButton(
                          text: 'Log In with Google',
                          onTap: () {
                            context.go('');
                          },
                        ),
                        SizedBox(height: 5),
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
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 10.0,
                                    ),
                                    child: Text(
                                      "OR",
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.bold,
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
                        SizedBox(height: 10),
                        Emailbutton(
                          onTap: () {
                            context.goNamed('/');
                          },
                          text: 'Login with email',
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 20,
                  right: 20,
                  child: MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: GestureDetector(
                      onTap: () {
                        context.go('/'); // change if needed
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
          );
        } else {
          return Scaffold();
        }
      },
    );
  }
}
