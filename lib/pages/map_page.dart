import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:line_icons/line_icons.dart';

class UnamaMapPlace {
  String placeName;
  double distanceTop;
  double distanceLeft;
  String path;

  UnamaMapPlace(this.placeName, this.distanceTop, this.distanceLeft, this.path);
}

class MapPage extends StatelessWidget {
  MapPage({super.key});

  final List<UnamaMapPlace> placeList = [
    UnamaMapPlace('Tv Unama', 0.35, 0.22, 'tv_unama'),
    UnamaMapPlace('Setor Acadêmico', 0.46, 0.56, 'setor_academico'),
    UnamaMapPlace('Labs Computação', 0.46, 0.32, 'labs_pc'),
    UnamaMapPlace('Bloco F - Cursos saúde', 0.25, 0.82, 'bloco_f'),
    UnamaMapPlace('Auditório', 0.41, 0.24, 'tv_unama'),
  ];

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
        child: Stack(
          children: [
            const Image(
              image: AssetImage('assets/images/map_unama.png'),
              alignment: Alignment.center,
              height: double.infinity,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            ListView(
                // TODO: change to render for
                children: placeList
                    .map((place) => MapPinMaker(
                        placeName: place.placeName,
                        distanceTop: place.distanceTop,
                        distanceLeft: place.distanceLeft,
                        redirectTo: place.path))
                    .toList()),
          ],
        ),
      ),
    );
  }
}

class MapPinMaker extends StatelessWidget {
  final double distanceTop;
  final double distanceLeft;
  final String redirectTo;
  final String placeName;

  const MapPinMaker(
      {super.key,
      required this.placeName,
      required this.distanceTop,
      required this.distanceLeft,
      required this.redirectTo});

  _handleOnPress(BuildContext context) {
    // ignore: avoid_print
    print(redirectTo);
    // Navigator.pushNamed(context, redirectTo);
  }

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: MediaQuery.of(context).size.height * 0.41,
      left: MediaQuery.of(context).size.width * 0.24,
      child: Tooltip(
        message: 'Auditório',
        child: IconButton(
          onPressed: () => _handleOnPress(context),
          icon: const Icon(
            LineIcons.mapPin,
          ),
          color: Colors.green,
          iconSize: 30,
        ),
      ),
    );
  }
}

class HelpDialog extends StatelessWidget {
  const HelpDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => showDialog<String>(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          title: const Text('Como usar o mapa?'),
          icon: const Icon(
            LineIcons.questionCircle,
            size: 50,
            color: Colors.green,
          ),
          content: const HelpInstructions(),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.pop(context, 'OK'),
              child: const Text('Entendi'),
            ),
          ],
        ),
      ),
      child: Row(
        children: const [
          Text("Ajuda"),
          Icon(
            LineIcons.questionCircle,
          ),
        ],
      ),
    );
  }
}

class HelpInstructions extends StatelessWidget {
  const HelpInstructions({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Padding(
          padding: EdgeInsets.only(top: 16),
          child: Text(
            '- Pressione por alguns segundos para ler o rotulo do lugar desejado.',
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 16),
          child: Text(
            '- Toque no ícone para ver a tela de detalhes do local.',
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 16),
          child: Text(
            '- Faca movimento de pinça para dar zoom no mapa.',
          ),
        ),
      ],
    );
  }
}
