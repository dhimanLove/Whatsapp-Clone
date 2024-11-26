import 'package:flutter/material.dart';

class Details extends StatefulWidget {
  const Details({super.key});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Hero(
          tag: 'bg',  // Must match the tag in the ListTile
          child: CircleAvatar(
            backgroundImage: NetworkImage("https://gdscmpstme.com/images/gdsc-logo.png"),
            radius: 100,  // Make sure this radius is large enough to see the transition
            backgroundColor: Colors.white,
          ),
        ),
      ),
    );
  }
}
