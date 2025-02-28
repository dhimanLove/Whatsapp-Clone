import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:liquid_progress_indicator_v2/liquid_progress_indicator.dart';
import 'package:video_player/video_player.dart';
import 'package:whatsapp/Updates/Status/Video/Vid3.dart';
import 'package:whatsapp/Updates/Status/Video/vid2.dart';
import 'package:whatsapp/Updates/Status/Video/videofive.dart';

class Videofour extends StatefulWidget {
  const Videofour({super.key});

  @override
  _VideofourState createState() => _VideofourState();
}

class _VideofourState extends State<Videofour> {
  late VideoPlayerController _controller;
  final TextEditingController _textController = TextEditingController();
  final List<String> emojis = [
    '🌟', '🐠', '🔥', '✨', '☕️', '🌍', '💪', '🙏', '❤️', '💭',
    '💫', '🦋', '😎', '🎉', '🍕', '🎁', '🥇', '🐶', '🦄', '🍀',
    '🌈', '💥', '🎶', '💃', '🕺', '🍦', '🍔', '🍩', '🍉', '🥑'
  ];

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.network(
      'https://cdn.pixabay.com/video/2024/08/12/226152_large.mp4',
    )..initialize().then((_) {
      setState(() {});
      _controller.play();
    });
  }

  void _openEmojiPicker() {
    Get.bottomSheet(
      Container(
        height: 200,
        color: Colors.black,
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 8),
          itemCount: emojis.length,
          itemBuilder: (context, index) {
            return IconButton(
              onPressed: () {
                _textController.text += emojis[index];
                Get.back();
              },
              icon: Text(emojis[index], style: TextStyle(fontSize: 22)),
            );
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
          child:
          Center(
            child: Column(
              children: [
                SizedBox(
                  height: 50,
                ),
                _controller.value.isInitialized
                    ? AspectRatio(
                  aspectRatio: 9 / 16,
                  child: VideoPlayer(_controller),
                )
                    : Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                        width: 100,
                        height: 100,
                        child: Center(
                          child: LiquidCircularProgressIndicator(
                            value: 0.6,
                            valueColor: AlwaysStoppedAnimation(Colors.blueAccent),
                            backgroundColor: Colors.black,
                            borderColor: Colors.white,
                            borderWidth: 2.0,
                            direction: Axis.vertical,
                            center: Icon(Icons.video_library, color: Colors.white, size: 30),
                          ),
                        )
                    ),
                    SizedBox(height: 8),
                    Text(
                      "Loading Video...",
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    ),
                  ],
                ),
                SizedBox(height: 20), // Spacer hataya, issue fix
                Padding(
                  padding: const EdgeInsets.only(left: 7,top: 10),
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: _openEmojiPicker,
                        icon: Icon(Icons.emoji_emotions_outlined, color: Colors.white70),
                      ),
                      Expanded(
                        child: TextField(
                          controller: _textController,
                          style: TextStyle(color: Colors.white70),
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Type a message...',
                            hintStyle: TextStyle(color: Colors.white70),
                          ),
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          if (_textController.text.isEmpty) {
                            Get.snackbar("Error", "Message likho pehle!");
                          } else {
                            Get.snackbar("Message Sent", _textController.text);
                            _textController.clear();
                          }
                        },
                        icon: Icon(Icons.send, color: Colors.white70),
                      ),
                    ],
                  ),
                ),
                Padding(padding: EdgeInsets.only(
                  left: 280,
                ),
                  child: IconButton(onPressed: (){
                    Get.off(Videofive());
                  }, icon: Row(
                    children: [
                      Text("Next",style: TextStyle(color: Colors.white),),
                      Icon(Icons.navigate_next,color: Colors.white70,),
                    ],
                  )),)
              ],
            ),
          )
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    _textController.dispose();
    super.dispose();
  }
}
