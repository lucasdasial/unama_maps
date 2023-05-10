import 'package:flutter/material.dart';
import 'package:unama_maps/pages/contact_page.dart';
import 'package:unama_maps/pages/gallery_page.dart';
import 'package:unama_maps/pages/map_page.dart';

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
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentPage,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.list), label: 'Contatos'),
          BottomNavigationBarItem(icon: Icon(Icons.map), label: 'Mapa'),
          BottomNavigationBarItem(icon: Icon(Icons.image), label: 'Galeria'),
        ],
        onTap: (pageSelected) {
          pc.animateToPage(pageSelected,
              duration: const Duration(milliseconds: 400), curve: Curves.ease);
        },
        // selectedItemColor: Colors.green[300],
        selectedIconTheme: const IconThemeData(size: 35),
      ),
    );
  }
}
