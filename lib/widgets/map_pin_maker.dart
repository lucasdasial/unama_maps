import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:unama_maps/models/step_data.dart';
import 'package:unama_maps/pages/contact_page.dart';
import 'package:unama_maps/pages/details_page.dart';

class MapPinMaker extends StatelessWidget {
  final String placeName;
  final double distanceTop;
  final double distanceLeft;
  final String id;
  final String intro;
  final List<String> steps;

  const MapPinMaker({
    super.key,
    required this.placeName,
    required this.distanceTop,
    required this.distanceLeft,
    required this.id,
    required this.intro,
    required this.steps,
  });

  _handleOnPress(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (ctx) => DetailsPage(
          placeName: placeName,
          id: id,
          intro: intro,
          steps: steps,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // inspect(steps);
    return Positioned(
      top: MediaQuery.of(context).size.height * distanceTop,
      left: MediaQuery.of(context).size.width * distanceLeft,
      child: Tooltip(
        message: placeName,
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
