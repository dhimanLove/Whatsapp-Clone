import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WallpaperPage extends StatelessWidget {
  final List imageUrls = List.generate(
    30, // Kitni images dikhani hain
        (index) => 'https://picsum.photos/200/300?random=$index',
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0B1014),
      appBar: AppBar(
        leading: IconButton(onPressed:(){
          Get.back();
        }, icon:Icon( Icons.arrow_back,color: Colors.white,)),
        title: Text('Wallpapers',style: TextStyle(color: Colors.white),),
        backgroundColor: Color(0xff0B1014),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3, // Ek row mein kitni images
          crossAxisSpacing: 8,
          mainAxisSpacing: 8,
        ),
        padding: const EdgeInsets.all(8),
        itemCount: imageUrls.length,
        itemBuilder: (context, index) {
          return ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.network(
              imageUrls[index],
              fit: BoxFit.cover,
            ),
          );
        },
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: WallpaperPage(),
    debugShowCheckedModeBanner: false,
  ));
}
