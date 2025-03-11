import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Colour extends StatefulWidget {
  const Colour({super.key});

  @override
  State<Colour> createState() => _ColourState();
}

class _ColourState extends State<Colour> {
  @override
  Widget build(BuildContext context) {
    // Generate a list of 30 unique solid colors
    final List<Color> colors = List.generate(
      20,
          (index) => Color.fromRGBO(
        (index * 10) % 200, // Red value
        (index * 20) % 200, // Green value
        (index * 30) % 256, // Blue value
        1.0, // Opacity (1.0 for solid)
      ),
    );

    return Scaffold(
      backgroundColor: Color(0xff171e1e),
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Get.back();
        }, icon: Icon(Icons.arrow_back,color: Colors.white,)),
        backgroundColor: Color(0xff171e1e),
        title: Text("Solid Colors Grid",style: TextStyle(
          color: Colors.white
        ),),
      ),
      body: GridView.builder(
        padding: EdgeInsets.all(8),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 14,
          childAspectRatio: 0.7, // Square tiles (width:height ratio)
        ),
        itemCount: colors.length,
        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(
              color: colors[index],
              borderRadius: BorderRadius.circular(8),
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 4,
                  offset: Offset(0, 2),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}