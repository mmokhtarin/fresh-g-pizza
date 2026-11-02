import 'package:flutter/material.dart';

import 'home.dart';
import 'menu.dart';
import 'about.dart';
import 'contact.dart';
import 'x_page.dart';
import 'facebook.dart';

void main() {
  runApp(const FreshGPizzaApp());
}

class FreshGPizzaApp extends StatelessWidget {
  const FreshGPizzaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fresh G Pizza',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/menu': (context) => const MenuPage(),
        '/about': (context) => const AboutPage(),
        '/contact': (context) => const ContactPage(),
        '/x': (context) => const XPage(),
        '/facebook': (context) => const FacebookPage(),
      },
    );
  }
}
