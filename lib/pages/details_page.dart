import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:unama_maps/data/places.dart';
import 'package:unama_maps/models/step_data.dart';
import 'package:unama_maps/widgets/passo_passo.dart';

class DetailsPage extends StatelessWidget {
  String placeName;
  String id;
  String intro;
  List<String> steps;

  DetailsPage({
    super.key,
    required this.placeName,
    required this.id,
    required this.intro,
    required this.steps,
  });

  @override
  Widget build(BuildContext context) {
    inspect(id);
    // inspect(steps);
    return Scaffold(
      appBar: AppBar(
        title: const Image(
          image: AssetImage("assets/images/logo_horizontal.png"),
          width: 120,
          height: 100,
          fit: BoxFit.contain,
        ),
        elevation: 1,
      ),
      body: Padding(
          padding: const EdgeInsets.all(24),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  placeName,
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    // color: Theme.of(context).primaryColor,
                  ),
                ),
                // Text(textAlign: TextAlign.justify, intro),
                Container(
                  margin: const EdgeInsets.only(
                    top: 16,
                  ),
                  child: Image(
                    image: AssetImage("assets/images/places/$id.png"),
                    width: double.infinity,
                    fit: BoxFit.contain,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 16, bottom: 24),
                  child: const Text(
                    'Como chegar? ',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  height: 400,
                  child: PassoPasso(Id: id, steps: steps),
                ),
                Container(
                  margin: const EdgeInsets.only(
                    top: 10,
                  ),
                )
              ],
            ),
          )),
    );
  }
}
