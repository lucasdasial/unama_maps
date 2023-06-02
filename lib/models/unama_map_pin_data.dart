import 'package:unama_maps/models/step_data.dart';

class UnamaMapPinData {
  final String placeName;
  final double distanceTop;
  final double distanceLeft;
  final String id;
  final String intro;

  final List<String> steps;

  UnamaMapPinData(
      {required this.placeName,
      required this.distanceTop,
      required this.distanceLeft,
      required this.id,
      required this.intro,
      required this.steps});
}
