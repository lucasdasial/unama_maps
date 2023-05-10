import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  final String _urlSite = "https://www.unama.br/";
  final String _urlInstaUnama = "https://www.instagram.com/unamaoficial/";
  final String _urlInstaCurso =
      "https://www.instagram.com/computacaounamabelem/";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Contatos')),
      body: Center(
        child: Column(
          // mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Conecte-se com unama',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16),
              child: ElevatedButton(
                onPressed: () async => _onPressed(_urlSite),
                style: ElevatedButton.styleFrom(fixedSize: const Size(200, 50)),
                child: const Text('Site Oficial'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16),
              child: ElevatedButton(
                onPressed: () async => _onPressed(_urlInstaUnama),
                style: ElevatedButton.styleFrom(fixedSize: const Size(200, 50)),
                child: const Text('@Unama Oficial'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16),
              child: ElevatedButton(
                onPressed: () async => _onPressed(_urlInstaCurso),
                style: ElevatedButton.styleFrom(fixedSize: const Size(200, 50)),
                child: const Text('@Computação Unama'),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _onPressed(String url) async {
    if (!await launchUrlString(url)) {
      throw Exception('Could not launch $url');
    }
  }
}
