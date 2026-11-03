import 'package:flutter/material.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Contact Us'), centerTitle: true),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Header / Store Image Icon
              const Icon(
                Icons.storefront_rounded,
                size: 80,
                color: Colors.deepOrange,
              ),
              const SizedBox(height: 16),
              const Text(
                'Fresh G Pizza',
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              const Text(
                'We would love to hear from you! Reach out to us through any of the channels below.',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 14, color: Colors.grey),
              ),
              const SizedBox(height: 32),

              // Contact Info Cards
              const Card(
                elevation: 2,
                child: ListTile(
                  leading: Icon(Icons.location_on, color: Colors.deepOrange),
                  title: Text('Address'),
                  subtitle: Text(
                    'Vivacity Mall, Ground Floor, 123 Pizza Street, Kuching, Sarawak',
                  ),
                ),
              ),
              const SizedBox(height: 12),
              const Card(
                elevation: 2,
                child: ListTile(
                  leading: Icon(Icons.phone, color: Colors.deepOrange),
                  title: Text('Phone'),
                  subtitle: Text('+60 12 345 6789'),
                ),
              ),
              const SizedBox(height: 12),
              const Card(
                elevation: 2,
                child: ListTile(
                  leading: Icon(Icons.email, color: Colors.deepOrange),
                  title: Text('Email'),
                  subtitle: Text('freshGpizza@wowpizza.com'),
                ),
              ),
              const SizedBox(height: 32),

              // Back to Home Button
              SizedBox(
                width: double.infinity,
                height: 48,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepOrange,
                    foregroundColor: Colors.white,
                  ),
                  onPressed: () {
                    // Navigate back or to root home route
                    if (Navigator.canPop(context)) {
                      Navigator.pop(context);
                    } else {
                      Navigator.pushReplacementNamed(context, '/');
                    }
                  },
                  child: const Text(
                    'Back to Home',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
