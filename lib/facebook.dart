import 'package:flutter/material.dart';

class FacebookPage extends StatelessWidget {
  const FacebookPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Facebook')),
      body: const Center(child: Text('Facebook Page Placeholder')),
    );
  }
}