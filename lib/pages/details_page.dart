import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class DetailsPage extends StatelessWidget {
  String placeName;

  DetailsPage({super.key, required this.placeName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(placeName),
        elevation: 1,
      ),
      body: Center(
        child: Text(placeName),
      ),
    );
  }
}
