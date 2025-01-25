import 'package:flutter/material.dart';
import 'package:gesture_x_detector/gesture_x_detector.dart';
import 'package:get/get.dart';

class Listss extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {
          Get.back();
        },
            icon: Icon(Icons.arrow_back,color: Colors.white,)
        ),
        title: Text(
          "List",
          style: TextStyle(color: Colors.white,fontWeight: FontWeight.w300),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.edit,color: Colors.white,)),
        ],
        backgroundColor: const Color(0xff0B1014),
      ),
      body: Column(
        children: [
          Container(
            height: 200,
            //color: Colors.red,
            child: Center(child: Image.network("https://cdn3.iconfinder.com/data/icons/desoff-illustrations/3000/the_guy_did_the_whole_to-do_list-256.png",fit: BoxFit.fill,)),
          ),
          SizedBox(
              width: 200,
              child: Text("Any List you create becomes a filter at the top of your chats tab. ",style: TextStyle(color: Colors.white54),textAlign: TextAlign.center,)),
          SizedBox(height: 20,),
          GestureDetector(
            child: Container(
              height: 50,
              width: 300,
              decoration: BoxDecoration(
                color:Color(0xff192828),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Center(child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.add,color: Colors.white,),
                  SizedBox(width: 20,),
                  Text("Create a List",style: TextStyle(color: Colors.white,fontSize: 19),),
                ],
              ),),
            ),
            onTap: () {
              Get.bottomSheet(
                  Container(
                    height: 1000,
                    color: Color(0xff0B1014),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Create a List",style: TextStyle(color: Colors.white,fontSize: 20),),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: "List name",
                              hintStyle: TextStyle(color: Colors.white54),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: "Add a description",
                              hintStyle: TextStyle(color: Colors.white54),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 50,
                            width: 300,
                            decoration: BoxDecoration(
                              color:Color(0xff192828),
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Center(child: Text("Create",style: TextStyle(color: Colors.white,fontSize: 19),)),
                          ),
                        ),
                      ],
                    ),
                  )
              );
            },
          ),
        ],
      ),

    backgroundColor: const Color(0xff0B1014),
    );
  }
}
