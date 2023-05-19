import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:unama_maps/pages/contact_page.dart';
import 'package:unama_maps/pages/gallery_page.dart';
import 'package:unama_maps/pages/maps_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentPage = 1;
  late PageController pc;

  setCurrentPage(newPage) {
    setState(() {
      currentPage = newPage;
    });
  }

  @override
  void initState() {
    super.initState();
    pc = PageController(initialPage: currentPage);
  }

  void handleOnTap(int pageSelected) {
    print('lucas');
    pc.animateToPage(
      pageSelected,
      duration: const Duration(milliseconds: 400),
      curve: Curves.ease,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: pc,
        onPageChanged: setCurrentPage,
        children: const [
          ContactPage(),
          MapPage(),
          GalleryPage(),
        ],
      ),
      backgroundColor: Colors.green,
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.green.shade50,
        color: Colors.green.shade900,
        items: const <Widget>[
          Icon(
            LineIcons.thumbsUp,
            size: 30,
            color: Colors.white,
          ),
          Icon(
            LineIcons.mapMarked,
            size: 30,
            color: Colors.white,
          ),
          Icon(
            LineIcons.images,
            size: 30,
            color: Colors.white,
          ),
        ],
        onTap: handleOnTap,
        index: currentPage,
      ),
    );
  }
}
