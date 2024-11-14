import 'package:flutter/material.dart';
import 'package:whatsapp/Calls/Calls.dart';
import 'package:whatsapp/Updates/Updates.dart';
import 'package:whatsapp/Chats/Chats.dart';
import 'package:whatsapp/communities/Communities.dart';

void main() {
  runApp(const Whatsapp());
}

class Whatsapp extends StatefulWidget {
  const Whatsapp({super.key});

  @override
  State<Whatsapp> createState() => _WhatsappState();
}

class _WhatsappState extends State<Whatsapp> {
  int _selectedIndex = 0;
  final PageController _pageController = PageController(); //PageController ek controller hai jo PageView ko control karne ke liye use hota hai. Yeh scrolling aur page ke index pe control provide karta hai.

  final List<Widget> _pages = [ //_pages ek list hai jo har tab ke widgets ko store karti hai.
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
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: PageView(
          controller: _pageController,
          onPageChanged: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          children: _pages,
        ),
        bottomNavigationBar: Container(
          height: 70,
          decoration: const BoxDecoration(
            color: Color(0xff0B1014),
          ),
          child: ClipRRect(
            child: BottomNavigationBar(
              backgroundColor: Colors.transparent,
              selectedItemColor: Colors.white,
              unselectedItemColor: Colors.white54,
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
          ),
        ),
      ),
    );
  }
}
