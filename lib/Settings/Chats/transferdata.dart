import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class Transferdata extends StatelessWidget {
  const Transferdata({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0B1014),
      appBar: AppBar(
        leading: IconButton(onPressed: () {
          Get.back();
        },
            icon: Icon(Icons.arrow_back,color: Colors.white,)
        ),
        title: Text("Transfer Data",style: TextStyle(color: Colors.white),),
        backgroundColor: Color(0xff0B1014),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 180,
            width: double.infinity,
            child: Image.network("https://cdn1.iconfinder.com/data/icons/technology-278/256/Transfer_Data_3_Desktop_Front.png"),
          ),
          Container(
            width: 300,
            child: Text("Transfer chat history to android phone",style: TextStyle(color: Colors.white70,
                fontWeight: FontWeight.w300,fontSize: 25),textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            width: 300,
            child: Text("Android phone par chat history transfer karne ke liye, aapko data backup feature ka use karna hoga. Ye option WhatsApp, Telegram jaise apps mein available hota hai, aur aap Google Drive ya local storage ka use kar sakte ho.",style: TextStyle(color: Colors.white38,
                fontWeight: FontWeight.w300,fontSize: 15),textAlign: TextAlign.center,
            ),
          ),
          Spacer(),
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
                  width: 300,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Center(
                    child: Text("Start",style: TextStyle(color: Color(0xff0B1014),fontWeight: FontWeight.w400),),
                  )
              ),
            ),
          ),
          SizedBox(
            height: 10,
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
                  width: 300,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: Colors.blueGrey)
                  ),
                  child: Center(
                    child: Text("Cancel",style: TextStyle(color: Colors.green,fontWeight: FontWeight.w400),),
                  )
              ),
            ),
          ),
          SizedBox(
            height: 10,
          )
        ],
      ),
    );
  }
}
