// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gradient_icon/gradient_icon.dart';

class ai extends StatefulWidget {
  @override
  _aiState createState() => _aiState();
}

class _aiState extends State<ai> {
  final TextEditingController _controller = TextEditingController();

  List messages = [
    'Ek bat bata',
    'Hi How can I help you?',
    'Your owner is a part of Illuminati ?',
    'kisi ko bataio mat bhai 🥲',
  ];
  List  emojis = [
    '🌟', '🐠', '🔥', '✨', '☕️', '🌍', '💪', '🙏', '❤️', '💭',
    '💫', '🦋', '😎', '🎉', '🍕', '🎁', '🥇', '🐶', '🦄', '🍀',
    '🌈', '💥', '🎶', '💃', '🕺', '🍦', '🍔', '🍩', '🍉', '🥑',
    '🦋', '🌻', '🌸', '🌺', '🍓', '🍑', '🌵', '🐱', '🐯', '🐻',
    '🐨', '🦊', '🐻', '🐶', '🐵', '🐺', '🦄', '🌞', '🌙', '🌑',
    '🌧️', '❄️', '☀️', '💧', '⛄️', '🌟', '🌊', '🍃', '🔥', '🌍',
    '🚀', '🛸', '✈️', '🚗', '🏀', '⚽️', '🏈', '🎮', '🏁', '🥳',
  ];

  void _sendMessage() {
    setState(() {
      messages.add(_controller.text);
      _controller.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    var scrH = MediaQuery.of(context).size.height;
    var scrW = MediaQuery.of(context).size.width;
    return Scaffold(
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
        title: Column(
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  height:23,
                  width: 23,
                  child: Image.network("https://aimode.co/wp-content/uploads/2024/07/meta-ai-logo.webp",fit: BoxFit.cover,),
                ),
                SizedBox(width: 8),
                Text(
                  "Meta Ai",
                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.w300),
                ),
                SizedBox(width: 8),
                Icon(
                  Icons.verified,
                  color: Colors.blue,
                  size: 15,
                ),
              ],
            ),
            Padding(padding: EdgeInsets.only(left: 10),
              child: Text(
                "with Llama 3.2",
                style: TextStyle(color: Colors.white54, fontSize: 12),
              ),
            ),
          ],
        ),
        backgroundColor: Color(0xff0B1014),
        actions: [
          IconButton(onPressed: (){
          }, icon: Icon(Icons.pattern_outlined,color: Colors.white,size: 30,)),
        ],
      ),

      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage("https://i.pinimg.com/736x/58/c3/33/58c33377dfcbb3022493dec49d098b02.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: ListView.builder(
                  itemCount: messages.length,
                  itemBuilder: (context, index) {
                    return MessageBubble(text: messages[index], isMe: index % 2 == 0);
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 50,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Color(0xff171e1e),
                ),
                child: Row(
                  children: [
                    IconButton(onPressed: () {
                      Get.bottomSheet(
                        Container(
                          height: 200,
                          color: Color(0xff171e1e),
                          child: GridView.builder(
                            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 8,
                            ),
                            itemCount: emojis.length,
                            itemBuilder: (context, index) {
                              return IconButton(
                                onPressed: () {
                                  Get.back();
                                  _controller.text += emojis[index];
                                },
                                icon: Text(emojis[index], style: TextStyle(fontSize: 22)),
                              );
                            },
                          ),
                        ),
                      );
                    }, icon: Icon(Icons.emoji_emotions_outlined,color: Colors.white70,)),
                    SizedBox(width: 10),
                    Expanded(
                      child: TextField(
                        style: TextStyle(color: Colors.white70),
                        controller: _controller,
                        decoration: InputDecoration(
                          focusedBorder: InputBorder.none,
                          border: InputBorder.none,
                          hintText: 'Type a message...',
                          hintStyle: TextStyle(color: Colors.white70),
                        ),
                      ),
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.transparent,
                      child: IconButton(onPressed: (){
                        Get.snackbar(
                          "Error",
                          "Voice message feature is not available yet!",
                          snackPosition: SnackPosition.TOP,
                          duration: Duration(seconds: 2),
                          boxShadows: [BoxShadow(color: Color(0xC7CC5858), blurRadius: 14)],
                          colorText: Colors.white,
                        );
                      }, icon: Icon(Icons.mic,color: Colors.white70,)),
                    ),
                    SizedBox(width: 10),
                    IconButton(
                      onPressed: () {
                        if (_controller.text.isEmpty) {
                          Get.snackbar(
                            "Error",
                            "Message to likho pehle!",
                            snackPosition: SnackPosition.TOP,
                            duration: Duration(seconds: 2),
                            boxShadows: [BoxShadow(color: Color(0xC7CC5858), blurRadius: 14)],
                            colorText: Colors.white,
                          );
                        } else {
                          _sendMessage();
                        }
                      },
                      icon: Icon(Icons.send,color: Colors.white70,),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MessageBubble extends StatelessWidget {
  final String text;
  final bool isMe;

  MessageBubble({required this.text, required this.isMe});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: isMe ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 5),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: isMe ? Colors.green : Colors.grey,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Text(
          text,
          style: TextStyle(
            color: isMe ? Colors.white : Colors.black,
          ),
        ),
      ),
    );
  }
}
