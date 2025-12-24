import 'package:e_tracker/items/navitem.dart';
import 'package:e_tracker/themes/buttons.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
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
        // Web/Desktop
        if (constraints.maxWidth > 800) {
          return Scaffold(
            body: Column(
              children: [
                // NAVBAR
                Container(
                  color: Colors.white, // light background, not heavy
                  padding: const EdgeInsets.symmetric(
                    horizontal: 40,
                    vertical: 16,
                  ),
                  child: Center(
                    child: ConstrainedBox(
                      constraints: const BoxConstraints(maxWidth: 1200),
                      child: Row(
                        children: [
                          // LOGO + TITLE
                          Row(
                            children: [
                              Image.asset("assets/amly.png", width: 60),
                              const SizedBox(width: 12),
                              Text(
                                'AMUNLY',
                                style: GoogleFonts.montserratSubrayada(
                                  fontSize: 32,
                                  fontWeight: FontWeight.bold,
                                  color: const Color(0xFF0D0662), // deep navy
                                ),
                              ),
                            ],
                          ),

                          const Spacer(),

                          // NAV ITEMS + BUTTON
                          Row(
                            children: [
                              NavItem(
                                title: "Home",
                                onTap: () => context.go('/home'),
                              ),
                              const SizedBox(width: 40),
                              NavItem(
                                title: "About Us",
                                onTap: () => context.go('/about'),
                              ),
                              const SizedBox(width: 40),
                              NavItem(
                                title: "Amunly 2026",
                                onTap: () => context.go('/amunly2026'),
                              ),
                              const SizedBox(width: 40),
                              NavItem(
                                title: "Contact Us",
                                onTap: () => context.go('/contact'),
                              ),
                              const SizedBox(width: 40),
                              ElevatedButton(
                                style: buttonTheme1,
                                onPressed: () => context.go('/login'),
                                child: const Text('Login'),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

                // HERO / BODY SECTION
                Expanded(
                  child: Container(
                    width: double.infinity,
                    color: const Color(0xFFEFF6FF), // light sky-blue
                    child: Center(
                      child: Text(
                        'Welcome to AMUNLY 2026!',
                        style: GoogleFonts.montserrat(
                          fontSize: 42,
                          fontWeight: FontWeight.bold,
                          color: const Color(0xFF0D0662),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        } else {
          // MOBILE placeholder (expand later)
          return Scaffold(body: Center(child: Text('Mobile view coming soon')));
        }
      },
    );
  }
}
