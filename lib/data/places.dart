import 'package:unama_maps/data/steps.dart';
import 'package:unama_maps/models/step_data.dart';
import 'package:unama_maps/models/unama_map_pin_data.dart';

final List<UnamaMapPinData> placeListData = [
  UnamaMapPinData(
      placeName: 'Biblioteca',
      distanceTop: 0.432,
      distanceLeft: 0.31,
      id: 'biblioteca',
      intro:
          'As bibliotecas do campus Alcindo Cacela, são totalmente completas, os aluno podem encontrar diversos livros de variados assuntos e além que podem fazer a solicitação de empréstimos dos mesmos. Um ambiente muito confortável para leitura e refrigerado.',
      steps: List.of(bibliotecaSteps)),
  UnamaMapPinData(
      placeName: 'Labs Computação',
      distanceTop: 0.51,
      distanceLeft: 0.32,
      id: 'labs_pc',
      intro:
          'No campus, os laboratórios de informática são disponibilizados aos alunos, com foco em pesquisas, estudos e desenvolvimentos, disponibilizando acesso a diversas ferramentas e softwares de produtividade.',
      steps: List.of(labSteps)),
  UnamaMapPinData(
    placeName: 'Bloco F - Cursos saúde',
    distanceTop: 0.32,
    distanceLeft: 0.83,
    id: 'bloco_f',
    intro:
        'O bloco F é onde acomodam-se as principais salas dos cursos voltados à saúde. ',
    steps: List.of(blocofSteps),
  ),
  UnamaMapPinData(
    placeName: 'Auditório',
    distanceTop: 0.465,
    distanceLeft: 0.232,
    id: 'auditorio',
    intro:
        'O auditório mais reconhecido e procurado do Campus Alcindo Cacela, é nele que à diversas palestras e eventos que são ministrados.',
    steps: List.of(auditorioSteps),
  )
];
