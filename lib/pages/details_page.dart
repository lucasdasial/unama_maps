import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  String placeName;
  String id;
  String intro;
  String stepText;

  DetailsPage(
      {super.key,
      required this.placeName,
      required this.id,
      required this.intro,
      required this.stepText});

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
                  height: 200,
                  child: ListView.builder(
                    itemCount: 8,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => Container(
                      width: 300,
                      height: 100,
                      margin: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(10)),
                      child: Center(
                        child: Text('Passo $index'),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(
                    top: 10,
                  ),
                  child: Text(
                    textAlign: TextAlign.justify,
                    stepText,
                  ),
                )
              ],
            ),
          )),
    );
  }
}
