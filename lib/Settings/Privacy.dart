import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Privacy extends StatelessWidget {
  const Privacy({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff0B1014),
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
        title: Text(
          "Privacy",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w300),
        ),
        backgroundColor: const Color(0xff0B1014),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Who can see my personal info",style: stl,),
              ListTile(
                title: Text("Last seen and online",style: stl,),
                subtitle: Text("My Contacts, everyone"),
                onTap:(){
                  Get.dialog(
                    AlertDialog(
                      title: Text("Select Font Size",style: stl,),
                      backgroundColor: Color(0xff333333),
                      content: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          ListTile(
                            title: Text(
                              "Everyone",
                              style: TextStyle(
                                color: Colors.white70,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                            onTap: () {
                              Get.back();
                            },
                          ),
                          ListTile(
                            title: Text(
                              "My Contacts",
                              style: TextStyle(
                                color: Colors.white70,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                            onTap: () {
                              Get.back();
                            },
                          ),
                          ListTile(
                            title: Text(
                              "Everyone Except...",
                              style: TextStyle(
                                color: Colors.white70,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                            onTap: () {
                              Get.back();
                            },
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
var stl =
TextStyle(color: Colors.white70,fontWeight: FontWeight.w300)
;