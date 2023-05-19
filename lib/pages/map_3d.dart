import 'package:flutter/material.dart';

import 'package:webview_flutter/webview_flutter.dart';

class Map3DPage extends StatefulWidget {
  const Map3DPage({super.key});

  @override
  State<Map3DPage> createState() => _Map3DPageState();
}

class _Map3DPageState extends State<Map3DPage> {
  final webViewController = WebViewController()
    ..setJavaScriptMode(JavaScriptMode.unrestricted)
    ..loadRequest(Uri.parse(
        'https://www.google.com/maps/@-1.4388596,-48.4782692,3a,75y,57.21h,88.58t/data=!3m8!1e1!3m6!1sAF1QipNzeftbBOiMjbBthx1tvfAGxDaXj8pY66RZDojK!2e10!3e11!6shttps:%2F%2Flh5.googleusercontent.com%2Fp%2FAF1QipNzeftbBOiMjbBthx1tvfAGxDaXj8pY66RZDojK%3Dw203-h100-k-no-pi-0-ya305.04312-ro0-fo100!7i10000!8i5000?hl=en-US'));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mapa 3D'),
        centerTitle: true,
        elevation: 1,
      ),
      body: WebViewWidget(
        controller: webViewController,
      ),
    );
  }
}
