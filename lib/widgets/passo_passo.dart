import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:unama_maps/models/step_data.dart';

class PassoPasso extends StatelessWidget {
  final String Id;

  final List<String> steps;

  const PassoPasso({super.key, required this.Id, required this.steps});

  @override
  Widget build(BuildContext context) {
    print("PASSO A PASSO ::::::::::::::::::::::::");
    inspect(steps);
    return Container(
      width: double.infinity,
      height: 200,
      decoration: BoxDecoration(color: Colors.blueGrey[600]),
      child: ListView.builder(
          itemCount: steps.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => CardStep(
                index: index,
                currentStep: steps[index],
                id: Id,
              )),
    );
  }
}

class CardStep extends StatelessWidget {
  final int index;
  final String currentStep;
  final String id;
  const CardStep(
      {super.key,
      required this.index,
      required this.currentStep,
      required this.id});

  @override
  Widget build(BuildContext context) {
    final step = index + 1;
    return Container(
      width: 300,
      height: 200,
      padding: const EdgeInsets.all(12),
      margin: const EdgeInsets.all(8),
      decoration: BoxDecoration(
          color: Colors.green[50], borderRadius: BorderRadius.circular(10)),
      child: Column(children: [
        Image(
          image: AssetImage('assets/images/steps/$id/$index.png'),
          height: 200,
          width: double.maxFinite,
          fit: BoxFit.cover,
        ),
        Container(
          margin: const EdgeInsets.only(top: 12),
          child: Text(
            'PASSO $step: $currentStep',
            textAlign: TextAlign.center,
          ),
        )
      ]),
    );
    ;
  }
}
