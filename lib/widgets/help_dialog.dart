import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

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
