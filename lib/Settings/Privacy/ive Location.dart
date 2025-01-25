import 'package:flutter/material.dart';
import 'package:get/get.dart';

class liveloction extends StatefulWidget {
  const liveloction({super.key});

  @override
  State<liveloction> createState() => _liveloctionState();
}

class _liveloctionState extends State<liveloction> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0e1717),
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
        title: Text("Live Location", style: TextStyle(color: Colors.white)),
        backgroundColor: Color(0xff0e1717),
      ),
      body: Padding(
        padding: const EdgeInsets.all(13),
        child: Column(
          children: [
            Container(
              height: 100,
              padding: EdgeInsets.only(left: 10, top: 10),
              child:Center(child: Image.network("https://cdn3.iconfinder.com/data/icons/map-and-navigation-98/256/add_location_add_pin_location_navigation_map.png"))
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Share your live location with your contacts",
              style: TextStyle(color: Colors.white54),
            ),
            SizedBox(
              height: 10,
            ),
            Divider(
              color: Colors.white54,
              thickness: 0.2,
            ),
            SizedBox(
              height: 10,
            ),
            Text("Live location requires background location. You can change this in your device settings",style: TextStyle(color: Colors.white54),textAlign: TextAlign.left
              ,),
          ],
        ),
      ),
    );
  }
}
