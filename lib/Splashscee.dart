import 'dart:async';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:whatsapp/Chats/Chats.dart';
import 'package:whatsapp/Login&Signup/Language.dart';
import 'package:whatsapp/Settings/Chat.dart';
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
      Navigator.push(context, MaterialPageRoute(builder: (context)=>Chats(),
      ));
    });
  }

  @override
  Widget build(BuildContext context) {
    var scrH = MediaQuery.of(context).size.height;
    var scrW = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        width: scrW*1,
        color:  const Color(0xff0B1014),
        child: Column(
          children: [
            Spacer(),
            Center(
              child: Icon(
                FontAwesomeIcons.whatsapp,
                size: 90,
                color: Colors.white70,
              ),
            ),
           Spacer(),
            Column(
              children: [
                SizedBox(height: 5),
                Text(
                  "from",
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 12,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 150),
                  child: Row(
                    children: [
                      Icon(FontAwesomeIcons.meta,color: Colors.white70,size: 20,),
                      SizedBox(
                        width: 7,
                      ),
                      Text(
                        "Meta",
                        style: TextStyle(
                          color: Colors.white70,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
