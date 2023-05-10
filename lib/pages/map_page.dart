import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class MapPage extends StatelessWidget {
  const MapPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mapa 📍'),
        elevation: 1,
      ),
      body: InteractiveViewer(
        panEnabled: false,
        // boundaryMargin: const EdgeInsets.all(1000),
        minScale: 1,
        maxScale: 2.5,
        child: const Image(
          image: AssetImage('assets/images/map_unama.png'),
          alignment: Alignment.center,
          height: double.infinity,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
