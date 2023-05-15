import 'package:flutter/material.dart';
import 'package:unama_maps/models/unama_map_pin_data.dart';

import '../widgets/help_dialog.dart';
import '../widgets/map_pin_maker.dart';

class MapPage extends StatelessWidget {
  MapPage({super.key});

  final List<UnamaMapPinData> placeListData = [
    UnamaMapPinData(
        placeName: 'Tv Unama',
        distanceTop: 0.35,
        distanceLeft: 0.22,
        id: 'tv_unama'),
    UnamaMapPinData(
        placeName: 'Setor Acadêmico',
        distanceTop: 0.46,
        distanceLeft: 0.56,
        id: 'setor_acdm'),
    UnamaMapPinData(
        placeName: 'Labs Computação',
        distanceTop: 0.46,
        distanceLeft: 0.32,
        id: 'labs_pc'),
    UnamaMapPinData(
        placeName: 'Bloco F - Cursos saúde',
        distanceTop: 0.25,
        distanceLeft: 0.82,
        id: 'bloco_f'),
    UnamaMapPinData(
        placeName: 'Auditório',
        distanceTop: 0.41,
        distanceLeft: 0.24,
        id: 'tv_unama'),
  ];

  List<Widget> generateMapPinList() {
    List<Widget> listaDePins = [];

    for (var pin in placeListData) {
      listaDePins.add(
        MapPinMaker(
            placeName: pin.placeName,
            distanceTop: pin.distanceTop,
            distanceLeft: pin.distanceLeft,
            id: pin.id),
      );
    }

    return listaDePins;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mapa 📍'),
        actions: const [
          HelpDialog(),
        ],
        elevation: 1,
      ),
      body: InteractiveViewer(
        child: Stack(children: [
          const Image(
            image: AssetImage('assets/images/map_unama.png'),
            alignment: Alignment.center,
            height: double.infinity,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          ...generateMapPinList()
        ]),
      ),
    );
  }
}
