import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: Row(
          children: [
            const Text(
              'Fresh G Pizza',
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Spacer(),
            // X (Twitter) Icon Navigation
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/x');
              },
              child: Image.asset(
                'assets/images/x_logo.png',
                fit: BoxFit.contain,
                height: 28,
                width: 28,
              ),
            ),
            const SizedBox(width: 16.0),
            // Facebook Icon Navigation
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/facebook');
              },
              child: Image.asset(
                'assets/images/facebook.png',
                fit: BoxFit.contain,
                height: 32,
                width: 32,
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 12),
            // Horizontal row for the 3 OutlinedButtons (without icons)
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Row(
                children: [
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      shape: const StadiumBorder(),
                      side: const BorderSide(color: Colors.deepOrange),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, '/menu');
                    },
                    child: const Text(
                      'Our Menu',
                      style: TextStyle(fontSize: 16.0, color: Colors.deepOrange),
                    ),
                  ),
                  const SizedBox(width: 10),
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      shape: const StadiumBorder(),
                      side: const BorderSide(color: Colors.deepOrange),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, '/about');
                    },
                    child: const Text(
                      'About Us',
                      style: TextStyle(fontSize: 16.0, color: Colors.deepOrange),
                    ),
                  ),
                  const SizedBox(width: 10),
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      shape: const StadiumBorder(),
                      side: const BorderSide(color: Colors.deepOrange),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, '/contact');
                    },
                    child: const Text(
                      'Contact Us',
                      style: TextStyle(fontSize: 16.0, color: Colors.deepOrange),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            // Centered Pizza Image
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16.0),
                child: Image.asset(
                  'assets/images/pizza.jpg',
                  height: 300.0,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 20),
            // Styled Pizza Assistant Message Bubble
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 24.0),
              padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 14.0),
              decoration: BoxDecoration(
                color: Colors.orange.shade50,
                borderRadius: BorderRadius.circular(14.0),
                border: Border.all(color: Colors.orange.shade200, width: 1.2),
              ),
              child: const Text(
                "Hi, I'm the Pizza Assistant, what can I help you order?",
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w600,
                  color: Colors.black87,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 24),
            // Bottom Action Area: Prominent Order Now Button
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: SizedBox(
                width: double.infinity,
                height: 52,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepOrange,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    elevation: 2,
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/menu');
                  },
                  child: const Text(
                    'Order Now',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 28),
          ],
        ),
      ),
    );
  }
}