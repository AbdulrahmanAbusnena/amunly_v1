import 'package:e_tracker/pages/about.dart';
import 'package:e_tracker/pages/amunly2026page.dart';
import 'package:e_tracker/pages/contact.dart';
import 'package:e_tracker/pages/homepage.dart';
import 'package:e_tracker/pages/landingpage.dart';
import 'package:e_tracker/pages/registration.dart/login_page.dart';
import 'package:e_tracker/pages/registration.dart/signup_page.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';

final GoRouter appRouter = GoRouter(
  routes: [
    GoRoute(path: '/', builder: (context, state) => const Landingpage()),
    GoRoute(path: '/home', builder: (context, state) => const HomePage()),
    GoRoute(path: '/about', builder: (context, state) => AboutPage()),
    GoRoute(path: '/contact', builder: (context, state) => ContactPage()),
    GoRoute(path: '/amunly2026', builder: (context, state) => Amunly2026page()),
    GoRoute(path: '/login', builder: (context, state) => LoginPage()),
    GoRoute(path: '/signup', builder: (context, state) => const SignupPage()),
  ],
);
