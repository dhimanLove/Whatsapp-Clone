import 'package:flutter/material.dart';
import 'package:get/get.dart';
class Twostep extends StatelessWidget {
  const Twostep({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0B1014),
      appBar: AppBar(
        leading: IconButton(onPressed: () {
          Get.back();
        },
            icon: Icon(Icons.arrow_back,color: Colors.white,)),
        title: Text(
          "Two-step Verification",
          style: TextStyle(color: Colors.white,fontWeight: FontWeight.w300),
        ),
        backgroundColor: const Color(0xff0B1014),
      ),
      body:
     Column(
       children: [
         SizedBox(
           height: 180,
           width: double.infinity,
           child: Center(
             child: Icon(Icons.onetwothree_sharp, color: Colors.green, size: 100),
           ),
         ),
         Container(
           width: 320,
           child: RichText(

             textAlign: TextAlign.center,
             text: TextSpan(
               children: [
                 TextSpan(
                   text: 'Two-factor authentication ek security feature hai jo password ke saath '
                       'ek extra verification step (OTP, biometrics) use karke accounts secure karta hai. ',
                   style: TextStyle(color: Colors.white54
                   ),
                 ),
                 TextSpan(
                   text: 'Learn more',
                   style: TextStyle(color: Colors.blue),
                 ),
               ],
             ),
           ),
         ),
         SizedBox(
           height: 380,
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
     )
      
    );
  }
}
