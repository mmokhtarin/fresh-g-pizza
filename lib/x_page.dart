import 'package:flutter/material.dart';

class XPage extends StatelessWidget {
  const XPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('X'),
        backgroundColor: Colors.black,
      ),
      body: const Center(
        child: Text('X Page Placeholder'),
      ),
    );
  }
}