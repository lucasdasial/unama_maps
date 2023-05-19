import 'package:flutter/material.dart';
import 'package:unama_maps/data/places.dart';

import '../widgets/help_dialog.dart';
import '../widgets/map_pin_maker.dart';

class Map2d extends StatelessWidget {
  Map2d({super.key});

  List<Widget> generateMapPinList() {
    List<Widget> listaDePins = [];

    for (var pin in placeListData) {
      listaDePins.add(
        MapPinMaker(
          placeName: pin.placeName,
          distanceTop: pin.distanceTop,
          distanceLeft: pin.distanceLeft,
          id: pin.id,
          intro: pin.intro,
          stepText: pin.stepText,
        ),
      );
    }

    return listaDePins;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mapa'),
        centerTitle: true,
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
