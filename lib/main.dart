import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:whatsapp/Calls/Calls.dart';
import 'package:whatsapp/Updates/Updates.dart';
import 'package:whatsapp/Chats/Chats.dart';
import 'package:whatsapp/communities/Communities.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Whatsapp(),
    );
  }
}

class Whatsapp extends StatefulWidget {
  const Whatsapp({super.key});

  @override
  State<Whatsapp> createState() => _WhatsappState();
}

class _WhatsappState extends State<Whatsapp> {
  int _selectedIndex = 0;
  final PageController _pageController = PageController();
  final List<Widget> _pages = [
    const Chats(),
    const Updates(),
    const Community(),
    const Calls(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      _pageController.jumpToPage(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    var scrW = MediaQuery.of(context).size.width;
    bool isWideScreen = scrW > 600; // Check for wide screens

    return Scaffold(
      body: isWideScreen
          ? Row(
        children: [
          NavigationRail(
            selectedIndex: _selectedIndex,
            onDestinationSelected: (index) {
              _onItemTapped(index);
            },
            labelType: NavigationRailLabelType.all,
            backgroundColor: const Color(0xff0B1014),
            destinations: const [
              NavigationRailDestination(
                icon: Icon(Icons.chat),
                label: Text('Chats'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.update),
                label: Text('Updates'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.people_alt),
                label: Text('Communities'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.call),
                label: Text('Calls'),
              ),
            ],
            selectedLabelTextStyle: const TextStyle(color: Colors.white),
            unselectedLabelTextStyle:
            const TextStyle(color: Colors.white54),
          ),
          Expanded(
            child: PageView(
              controller: _pageController,
              onPageChanged: (index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
              children: _pages,
            ),
          ),
        ],
      )
          : PageView(
        controller: _pageController,
        onPageChanged: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        children: _pages,
      ),
      bottomNavigationBar: isWideScreen
          ? null // Hide BottomNavigationBar on wide screens
          : BottomNavigationBar(
        backgroundColor: const Color(0xff0B1014),
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.white54,
        unselectedFontSize: 10,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'Chats',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.update),
            label: 'Updates',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people_alt),
            label: 'Communities',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.call),
            label: 'Calls',
          ),
        ],
      ),
    );
  }
}
