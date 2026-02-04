import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class BookTable extends StatefulWidget {
  const BookTable({super.key});

  @override
  State<BookTable> createState() => _BookTableState();
}

class _BookTableState extends State<BookTable> {
  late WebViewController _webViewController;

  @override
  void initState() {
    super.initState();
    _webViewController = WebViewController()
      ..loadFlutterAsset('assets/index.html');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Café Vesuvius Menu'),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      body: WebViewWidget(controller: _webViewController),
    );
  }
}
