import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'dart:math';

class StatusController extends GetxController {
  final List<Color> colors = List.generate(
    20,
        (index) {
      final int baseRed = 40 + (index * 5) % 30;
      final int baseGreen = 30 + (index * 5) % 10;
      final int baseBlue = 60 + (index * 10) % 60;

      // Convert RGB to HEX format
      String hex =
          'FF${baseRed.toRadixString(16).padLeft(2, '0')}' // Red
          '${baseGreen.toRadixString(16).padLeft(2, '0')}' // Green
          '${baseBlue.toRadixString(16).padLeft(2, '0')}'; // Blue

      return Color(int.parse(hex, radix: 16));
    },
  );


  var backgroundColor = Colors.white.obs;
  var statusText = ''.obs;
  final TextEditingController textController = TextEditingController();

  @override
  void onInit() {
    super.onInit();
    changeColor(); // Set initial random color
  }

  void changeColor() {
    backgroundColor.value = colors[Random().nextInt(colors.length)];
  }

  void postStatus() {
    if (statusText.value.isNotEmpty) {
      Get.snackbar(
        'Status Posted',
        'Your status "${statusText.value}" has been posted!',
        snackPosition: SnackPosition.TOP,
        backgroundColor: Colors.green,
        colorText: Colors.white,
      );
      textController.clear();
      statusText.value = '';
    }
  }
}

class Colorpage extends StatelessWidget {
  final StatusController controller = Get.put(StatusController());

  Colorpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
            () => Container(
          color: controller.backgroundColor.value,
          child: SafeArea(
            child: Stack(
              children: [
                // Text Input Area
                Center(
                  child: TextField(
                    controller: controller.textController,
                    onChanged: (value) => controller.statusText.value = value,
                    maxLines: null,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                    ),
                    decoration: const InputDecoration(
                      hintText: 'Type a status',
                      hintStyle: TextStyle(
                        color: Colors.white54,
                        fontSize: 24,
                      ),
                      border: InputBorder.none,
                    ),
                  ),
                ),

                // Top Bar (Close, Text Style, Color Change)
                Positioned(
                  top: 0,
                  left: 0,
                  right: 0,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // Close Button
                        IconButton(
                          icon: const Icon(Icons.close, color: Colors.white),
                          onPressed: () => Get.back(),
                        ),

                        // Text Style and Color Change Buttons
                        Row(
                          children: [
                            IconButton(
                              icon: const Icon(Icons.text_fields, color: Colors.white),
                              onPressed: () {
                                // Add text style functionality if needed
                              },
                            ),
                            IconButton(
                              icon: const Icon(Icons.color_lens, color: Colors.white),
                              onPressed: controller.changeColor,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),

                // Bottom Bar (Video, Photo, Text, Post)
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    color: Colors.black.withOpacity(0.8),
                    padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // Video, Photo, Text Buttons
                        Row(
                          children: [
                            TextButton(
                              onPressed: () {},
                              child: const Text(
                                'Video',
                                style: TextStyle(color: Colors.white54),
                              ),
                            ),
                            TextButton(
                              onPressed: () {},
                              child: const Text(
                                'Photo',
                                style: TextStyle(color: Colors.white54),
                              ),
                            ),
                            TextButton(
                              onPressed: () {},
                              child: const Text(
                                'Text',
                                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),

                        // Post Button
                        FloatingActionButton(
                          onPressed: controller.postStatus,
                          backgroundColor: Colors.green,
                          mini: true,
                          child: const Icon(
                            Icons.send,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}