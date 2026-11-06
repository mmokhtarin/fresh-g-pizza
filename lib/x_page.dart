import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class XPage extends StatefulWidget {
  const XPage({super.key});

  @override
  State<XPage> createState() => _XPageState();
}

class _XPageState extends State<XPage> {
  late final WebViewController _controller;
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setNavigationDelegate(
        NavigationDelegate(
          onPageStarted: (String url) => setState(() => _isLoading = true),
          onPageFinished: (String url) => setState(() => _isLoading = false),
        ),
      )
      ..loadRequest(Uri.parse('https://x.com'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('X'), backgroundColor: Colors.black),
      body: Stack(
        children: [
          WebViewWidget(controller: _controller),
          if (_isLoading) const Center(child: CircularProgressIndicator()),
        ],
      ),
    );
  }
}
