import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Passkeys extends StatelessWidget {
  const Passkeys({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {
          Get.back();
        },
            icon: Icon(Icons.arrow_back,color: Colors.white,)),
        title: Text(
          "Passkeys",
          style: TextStyle(color: Colors.white,fontWeight: FontWeight.w300),
        ),
        backgroundColor: const Color(0xff0B1014),
      ),
      backgroundColor: const Color(0xff0B1014),

      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 180,
                width: double.infinity,
                child: Center(
                  child: Icon(Icons.vpn_key_sharp, color: Colors.green, size: 100),
                ),
              ),
              Text("Login Securely and protect your account", style: TextStyle(color: Colors.white70, fontSize: 21.5,fontWeight: FontWeight.w300),textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),
              ListTile(
                leading: Icon(Icons.shield_outlined,color: Colors.white54,),
                title: Text("Create a passkey for a secure , easy way to login to your account  ",
                    style: TextStyle(color: Colors.white54,
                        fontWeight: FontWeight.w300)
                ),
              ),
              ListTile(
                leading: Icon(Icons.fingerprint,color: Colors.white54,),
                title: Text("Log into Whatsap with your face , fingerprint or screen lock",
                    style: TextStyle(color: Colors.white54,
                    fontWeight: FontWeight.w300),
                ),
              ),
              ListTile(
                leading: Icon(Icons.laptop_outlined,color: Colors.white54),
                title: Text("Your Passkey is stored in your password manager",style: TextStyle(color: Colors.white54,fontWeight: FontWeight.w300),),
              ),
              SizedBox(
                height: 170,
              ),
              GestureDetector(
                onTap: () {
                  Get.dialog(
                    Dialog(
                      backgroundColor: Color(0xff0B1014),
                      child: Container(
                        height: 200,
                        width: 300,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text("Error Generating the Passkey .",style: TextStyle(color: Colors.white54,fontSize: 18,fontWeight: FontWeight.w300),),
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
                      width: 280,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Center(
                        child: Text("Create Passkey",style: TextStyle(color: Color(0xff0B1014),fontWeight: FontWeight.w400),),
                      )
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
