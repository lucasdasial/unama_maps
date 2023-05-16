import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class DetailsPage extends StatelessWidget {
  String placeName;
  String id;

  DetailsPage({super.key, required this.placeName, required this.id});

  @override
  Widget build(BuildContext context) {
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
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Text(
              placeName,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                // color: Theme.of(context).primaryColor,
              ),
            ),
            Image(
              image: AssetImage("assets/images/places/$id.png"),
              width: double.infinity,
              height: 250,
              fit: BoxFit.contain,
            ),
            const Text(
                'O bloco F é onde acomodam-se as principais salas dos cursos voltados à saúde. '),
            const Text(
              'Como chegar? ',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,

                // color: Theme.of(context).primaryColor,
              ),
            ),
            const Text(
              'Ao chegar na entrada principal, vá para o Térreo e siga o corredor, nos fundos, passando o estacionamento, encontra-se o bloco F.',
            ),
          ],
        ),
      ),
    );
  }
}
