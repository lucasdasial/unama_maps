import 'package:flutter/material.dart';
import 'package:unama_maps/data/places.dart';
import 'package:unama_maps/pages/details_page.dart';

class GalleryPage extends StatelessWidget {
  const GalleryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Galeria'),
        centerTitle: true,
        elevation: 1,
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Center(
            child: ListView.builder(
          itemCount: placeListData.length,
          itemBuilder: (context, index) => Card(
            id: placeListData[index].id,
            intro: placeListData[index].intro,
            title: placeListData[index].placeName,
          ),
        )),
      ),
    );
  }
}

class Card extends StatelessWidget {
  Card({
    super.key,
    required this.title,
    required this.id,
    required this.intro,
  });

  final String title;
  final String id;
  final String intro;

  _handleOnPress(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (ctx) => DetailsPage(
          placeName: title,
          id: id,
          intro: intro,
          steps: [],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => {},
      child: Container(
        margin: const EdgeInsets.only(bottom: 18),
        padding: const EdgeInsets.all(16),
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.green[50],
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              child: Text(
                title,
                style: const TextStyle(fontSize: 24),
                textAlign: TextAlign.start,
              ),
            ),
            Image(
              image: AssetImage("assets/images/places/$id.png"),
              width: double.infinity,
              fit: BoxFit.contain,
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              child: Text(
                intro,
                textAlign: TextAlign.justify,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
