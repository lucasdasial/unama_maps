import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:unama_maps/pages/contact_page.dart';
import 'package:unama_maps/pages/details_page.dart';

class MapPinMaker extends StatelessWidget {
  final String placeName;
  final double distanceTop;
  final double distanceLeft;
  final String redirectTo;

  const MapPinMaker({
    super.key,
    required this.placeName,
    required this.distanceTop,
    required this.distanceLeft,
    required this.redirectTo,
  });

  _handleOnPress(BuildContext context) {
    // Navigator.pushNamed(context, redirectTo);
    Navigator.of(context).push(MaterialPageRoute(
        builder: (ctx) => DetailsPage(
              placeName: placeName,
            )));
  }

  @override
  Widget build(BuildContext context) {
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
