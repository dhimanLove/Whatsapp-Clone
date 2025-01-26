import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Reports extends StatelessWidget {
  const Reports({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff0B1014),
      appBar: AppBar(
        backgroundColor: Color(0xff0B1014),
        leading: IconButton(onPressed: (){Get.back();},
            icon:Icon(Icons.arrow_back,color: Colors.white,)
    ),
        title: Text('Channel Reports',style: TextStyle(color: Colors.white),),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 100,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(Icons.error_outline,color: Colors.green,size: 100),
                SizedBox(
                  height: 30,
                ),
                Text("No Reports Found",style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.w300
                ),)
              ],
            ),
          ],
        )
    )
    );
  }
}
