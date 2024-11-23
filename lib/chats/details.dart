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
      body: Container(
        color: Color(0xff0B1014),
        child:
        Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Hero(tag: 'bg', child: Image.network("https://cdn3.iconfinder.com/data/icons/milenia-travel-female-3d/256/Transportation_30.png"),
              ),
              Text("Hero Animation",style: TextStyle(fontSize: 35,color: Colors.white70),)
            ],
          ),
        ),
      ),
    );
  }
}
