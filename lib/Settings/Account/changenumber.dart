// ignore_for_file: use_full_hex_values_for_flutter_colors

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class Changenumber extends StatelessWidget {
  const Changenumber({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0B1014),
      appBar: AppBar(
        backgroundColor: const Color(0xff0B1014),
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(Icons.arrow_back, color: Colors.white),
        ),
        title: const Text(
          "Change number",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w300),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 180,
            width: double.infinity,
            child: Icon(FontAwesomeIcons.simCard,color:Colors.green,size: 100,),
          ),
          SizedBox(
            width: 300,
            child: Text("Changing your phone number will migrate your accounnt info ,groups & settings",
              style: TextStyle(color: Colors.white70,fontSize: 17,fontWeight: FontWeight.w300),),
          ),
          SizedBox(height: 20,),
          SizedBox(
            width: 300,
            child: Text("Changing your phone number will migrate your accounnt info ,groups & settings with me in a dat eto roman empire tiss",
              style: TextStyle(color: Colors.white38,fontWeight: FontWeight.w300),),
          ),
          SizedBox(height: 20,),
          SizedBox(
            width: 300,
            child: Text("ChsettingsChanging your phone number will migrate your accounnt info ,groups & settingsChanging your phone number will migrate your accounnt info ,groups & settings",
              style: TextStyle(color: Colors.white38,fontWeight: FontWeight.w300),),
          ),
          SizedBox(
            height: 200,
          ),
          GestureDetector(
            onTap: () {
              Get.dialog(
                  Dialog(
                    backgroundColor: Color(0xff0B1014),
                    child: SizedBox(
                      height: 200,
                      width: 300,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text("Done , Please Verify . .",style: TextStyle(color: Colors.white54,fontSize: 18,fontWeight: FontWeight.w300),),
                          SizedBox(
                            height: 10,
                          ),
                          Icon(Icons.fingerprint_rounded,color: Colors.white54,size: 80,)
                        ],
                      ),
                    ),
                  )
              );
            },
            child: Center(
              child: Container(
                  height: 45,
                  width: 100,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Center(
                    child: Text("Turn On",style: TextStyle(color: Color(0xff0B1014),fontWeight: FontWeight.w400),),
                  )
              ),
            ),
          )
        ],
      ),
    );
  }
}
