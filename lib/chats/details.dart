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
          tag: 'bg',
          child: CircleAvatar(
            backgroundImage: NetworkImage("https://images.unsplash.com/photo-1572647678520-ebef18aa78cc?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
            radius: 100,
            backgroundColor: Colors.white,
          ),
        ),
      ),
    );
  }
}
