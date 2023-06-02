import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:lottie/lottie.dart';
import 'package:unama_maps/pages/map_2d.dart';
import 'package:unama_maps/pages/map_3d.dart';

class MapPage extends StatelessWidget {
  const MapPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Bem-vindo 🖖',
          ),
          elevation: 1,
          centerTitle: true,
        ),
        body: SafeArea(
          child: Container(
            padding: const EdgeInsets.all(24),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Lottie.asset('assets/map.json'),
                const Text('Escolha um mapa', style: TextStyle(fontSize: 24)),
                Padding(
                  padding: const EdgeInsets.only(top: 16),
                  child: SizedBox(
                    width: double.infinity,
                    height: 80,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (_) => Map2d()));
                      },
                      child: const Text('Mapa 2D'),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 16),
                  child: SizedBox(
                    width: double.infinity,
                    height: 80,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (_) => Map3DPage()));
                      },
                      child: const Text('Mapa 3D'),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
