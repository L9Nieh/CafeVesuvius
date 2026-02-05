// ignore: file_names
// ignore: file_names
// ignore_for_file: camel_case_types, duplicate_ignore, file_names, use_super_parameters

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

// ignore: camel_case_types
class book_Table extends StatefulWidget {
  const book_Table({Key? key}) : super(key: key);

  @override
  State<book_Table> createState() => _book_TableState();
}

class _book_TableState extends State<book_Table> {
  late final WebViewController _controller;

  @override
  void initState() {
    super.initState();
    // The newer WebViewController/WebViewWidget APIs don't require setting
    // WebView.platform on recent plugin versions. Remove platform assignment
    // to avoid missing-symbol errors in different package versions.
    _controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..addJavaScriptChannel(
        'Flutter',
        onMessageReceived: (JavaScriptMessage message) {
          final payload = message.message;
          debugPrint('JS -> Flutter: $payload');
          // parse JSON og håndter action (fx reservér bord)
        },
      )
      ..setNavigationDelegate(
        NavigationDelegate(
          onPageFinished: (url) {
            // Sæt eventuelt initial state eller kald JS-funktion
          },
        ),
      )
      ..loadFlutterAsset('lib/assets/tableBooking.html');
  }

  Future<void> sendToWeb(String jsonString) async {
    await _controller.runJavaScript("fromFlutter($jsonString);");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Book bord')),
      body: WebViewWidget(controller: _controller),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          sendToWeb("'Hello from Flutter'");
        },
        child: Icon(Icons.send),
      ),
    );
  }
}
