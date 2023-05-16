import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class GalleryPage extends StatelessWidget {
  const GalleryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Galeria 🖼️'), elevation: 1),
      body: Stack(
        children: [
          IconButton(
            onPressed: () {},
            icon: const Icon(LineIcons.mapMarker),
            color: Colors.black,
          ),
        ],
      ),
    );
  }
}
