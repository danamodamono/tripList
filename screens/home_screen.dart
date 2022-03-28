import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:trip_list/parts/qr_in_part.dart';
import 'package:trip_list/view/screens/pages/list_page.dart';
import 'package:trip_list/view/screens/pages/map_page.dart';

class HomeScreen extends StatefulWidget {

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  final _pages = [
    ListPage(),
    MapPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
          floatingActionButton: FloatingActionButton(
            backgroundColor: Colors.white,
            onPressed: () => _qrInPart(context),
            child: FaIcon(FontAwesomeIcons.camera),
          ),
          body: _pages[_currentIndex],
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: _currentIndex,
            items: const [
              BottomNavigationBarItem(
                icon: const Icon(Icons.list),
                label: "リスト"
              ),
              BottomNavigationBarItem(
                  icon: const Icon(Icons.maps_ugc_outlined),
                  label: "マップ"
              ),
            ],
            onTap: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
          ),
        ),
    );
  }
  _qrInPart(BuildContext context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => QrInPart()));
  }
}
