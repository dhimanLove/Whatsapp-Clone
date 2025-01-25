import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Verifynnumber extends StatelessWidget {
  const Verifynnumber({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: ElevatedButton(onPressed: (){
            Get.dialog(
              AlertDialog(
                title: const Text('Hello, GetX!'),
                content: const Text('Yeh ek simple dialog box hai.'),
                actions: [
                  TextButton(
                    onPressed: () => Get.back(),
                    child: const Text('Close'),
                  ),
                ],
              ),
            );
          }, child: const Text("data")),
        ),
      ),
    );
  }
}
