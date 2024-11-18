import 'dart:async';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:whatsapp/main.dart';

class Splashscee extends StatefulWidget {
  const Splashscee({super.key});

  @override
  State<Splashscee> createState() => _SplashsceeState();
}

class _SplashsceeState extends State<Splashscee> {

  @override
  void initState() {
    super.initState();

    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Whatsapp(),
      ));
    });
  }

  @override
  Widget build(BuildContext context) {
    var scrH = MediaQuery.of(context).size.height;
    var scrW = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        color:  const Color(0xff0B1014),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(FontAwesomeIcons.whatsapp,size: 100,color: Colors.green,),
              SizedBox(height: scrH*0.05,),
              Text("Whatsapp", style: TextStyle(color: Colors.white,fontSize: 40),)
            ],
          ),
        ),
      ),
    );
  }
}
