import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'dart:math';

class ColorController extends GetxController {
  final List<Color> colors = [
    Colors.red,
    Colors.blue,
    Colors.green,
    Colors.orange,
    Colors.purple,
    Colors.teal,
  ];

  var backgroundColor = Colors.white.obs; // Default color

  void changeColor() {
    backgroundColor.value = colors[Random().nextInt(colors.length)];
  }
}

class Colorpage extends StatelessWidget {
  final ColorController colorController = Get.put(ColorController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() => Container(
        color: colorController.backgroundColor.value,
        child: Center(
          child: Text(
            'Tap the icon to change color!',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: colorController.changeColor,
        child: Icon(Icons.color_lens),
      ),
    );
  }
}
