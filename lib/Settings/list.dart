// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:gesture_x_detector/gesture_x_detector.dart';
import 'package:get/get.dart';

class Listss extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TextEditingController _controller = TextEditingController();
    TextEditingController description = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.white,
            )),
        title: Text(
          "List",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w300),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.edit, color: Colors.white)),
        ],
        backgroundColor: const Color(0xff0B1014),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 200,
              child: Center(
                  child: Image.network(
                    "https://cdn3.iconfinder.com/data/icons/desoff-illustrations/3000/the_guy_did_the_whole_to-do_list-256.png",
                    fit: BoxFit.fill,
                  )),
            ),
            SizedBox(
                width: 200,
                child: Text(
                  "Any List you create becomes a filter at the top of your chats tab. ",
                  style: TextStyle(color: Colors.white54),
                  textAlign: TextAlign.center,
                )),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
              child: Container(
                height: 50,
                width: 300,
                decoration: BoxDecoration(
                  color: Color(0xff192828),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                      SizedBox(width: 20),
                      Text(
                        "Create a List",
                        style: TextStyle(color: Colors.white, fontSize: 19),
                      ),
                    ],
                  ),
                ),
              ),
              onTap: () {
                Get.bottomSheet(
                  Container(
                    height: 300, // Adjusted height for visibility
                    color: Color(0xff0B1014),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Create a List",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextField(
                            style: TextStyle(color: Colors.white70),
                            controller: _controller,
                            decoration: InputDecoration(
                              hintText: 'Enter Name of List',
                              hintStyle: TextStyle(color: Colors.white70),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextField(
                            style: TextStyle(color: Colors.white70),
                            controller: description,
                            decoration: InputDecoration(
                              hintText: 'Add a description',
                              hintStyle: TextStyle(color: Colors.white70),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ElevatedButton(
                            onPressed: () {
                              if (_controller.text.isNotEmpty) {
                                Get.back();
                                Get.snackbar(
                                  "Success",
                                  "List Created",
                                  snackPosition: SnackPosition.TOP,
                                  duration: Duration(seconds: 2),
                                  boxShadows: [BoxShadow(color: Color(
                                      0xC7528C47), blurRadius: 14)],
                                  colorText: Colors.white
                                );
                              } else {
                                Get.snackbar(
                                  "Error",
                                  "Details to dal",
                                  snackPosition: SnackPosition.TOP,
                                  duration: Duration(seconds: 2),
                                  boxShadows: [BoxShadow(color: Color(0xC7CC5858), blurRadius: 14)],
                                  colorText: Colors.white
                                );
                              }
                            },
                            child: Text("Create List", style: TextStyle(color: Colors.white)),
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(Color(0xff192828)),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
            Divider(
              color: Color(0xff1b2226),
              thickness: 0.5,
            ),
            Text(
              "Your Lists",
              style: TextStyle(color: Colors.white54),
            ),
            ListTile(
              title: Text(
                "Unread",
                style: TextStyle(color: Colors.white),
              ),
              subtitle: Text(
                "Present",
                style: TextStyle(color: Colors.white54),
              ),
            ),
            ListTile(
              title: Text(
                "Favourite",
                style: TextStyle(color: Colors.white),
              ),
              subtitle: Text(
                "Add people or groups",
                style: TextStyle(color: Colors.white54),
              ),
            ),
            ListTile(
              title: Text(
                "Groups",
                style: TextStyle(color: Colors.white),
              ),
              subtitle: Text(
                "Present",
                style: TextStyle(color: Colors.white54),
              ),
            ),
            SizedBox(height: 20),
            Divider(
              color: Colors.white,
              thickness: 0.2,
            ),
            SizedBox(height: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 19),
                  child: Text(
                    "Available presents",
                    style: TextStyle(color: Colors.white54, fontSize: 13),
                  ),
                ),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.only(left: 25, right: 25),
                  child: Text(
                    "If you remove a list, it will no longer be available as a filter in your chats tab",
                    style: TextStyle(color: Colors.white54, fontSize: 12),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      backgroundColor: const Color(0xff0B1014),
    );
  }
}
