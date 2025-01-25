import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final TextEditingController _controller = TextEditingController();
  List<String> messages = [
    'Kya Haal ?',
    'I am good, and you?',
    '9/11 Ka credit dega ke nai?',
    'Jacket lega ?',
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
        title: Row(
          children: [
            CircleAvatar(
              backgroundColor: Colors.transparent,
              backgroundImage: NetworkImage(
                "https://upload.wikimedia.org/wikipedia/commons/thumb/c/ca/Osama_bin_Laden_portrait.jpg/220px-Osama_bin_Laden_portrait.jpg",
              ),
              radius: 19,
            ),
            SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Osama Bin Laden',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    'Online',
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 14,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
          ],
        ),
        backgroundColor: Color(0xff0B1014),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.call),
            color: Colors.white,
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.video_call),
            color: Colors.white,
          ),
          Builder(
            builder: (context) => IconButton(
              onPressed: () {
                Scaffold.of(context).openEndDrawer();
              },
              icon: const Icon(Icons.more_vert),
              color: Colors.white,
            ),
          ),
        ],
      ),
      endDrawer: Padding(
        padding: const EdgeInsets.only(top: 70),
        child: Align(
          alignment: Alignment.topRight,
          child: Container(
            width: scrW * 0.5,
            height: scrH * 0.39,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color(0xff171e1e),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 13),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [

                  Align(
                    alignment: Alignment.centerLeft,
                    child: InkWell(
                        onTap: () {},
                        child:SizedBox(
                          width: scrW*0.4,
                          height: scrH*0.03,
                          //color: Colors.red,
                          child: Text(
                            "View contact",
                            style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.w300),
                          ),
                        )
                    ),
                  ),

                  Align(
                    alignment: Alignment.centerLeft,
                    child: InkWell(
                        onTap: (){},
                        child:SizedBox(
                          width: scrW*0.4,
                          height: scrH*0.03,
                          //color: Colors.red,
                          child:  Text(
                            "Search",
                            style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.w300),
                          ),
                        )
                    ),
                  ),

                  Align(
                    alignment: Alignment.centerLeft,
                    child: InkWell(
                        onTap: () {
                        },
                        child:SizedBox(
                          width: scrW*0.4,
                          height: scrH*0.03,
                          //color: Colors.red,
                          child:  const Text(
                            "Add to list",
                            style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.w300),
                          ),
                        )
                    ),
                  ),

                  Align(
                    alignment: Alignment.centerLeft,
                    child: InkWell(
                        onTap: () {
                        },
                        child:SizedBox(
                          width: scrW*0.4,
                          height: scrH*0.03,
                          //color: Colors.red,
                          child:  const Text(
                            "Media, links, and docs",
                            style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.w300),
                          ),
                        )
                    ),
                  ),

                  Align(
                    alignment: Alignment.centerLeft,
                    child: InkWell(
                        onTap: () {
                        },
                        child:SizedBox(
                          width: scrW*0.4,
                          height: scrH*0.03,
                          //color: Colors.red,
                          child:  const Text(
                            "Mute notifications",
                            style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.w300),
                          ),
                        )
                    ),
                  ),

                  Align(
                    alignment: Alignment.centerLeft,
                    child: InkWell(
                        onTap: () {
                        },
                        child:SizedBox(
                          width: scrW*0.4,
                          height: scrH*0.03,
                          //color: Colors.red,
                          child:  const Text(
                            "Dissappearing messages",
                            style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.w300),
                          ),
                        )
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: InkWell(
                        onTap: () {
                        },
                        child:SizedBox(
                          width: scrW*0.4,
                          height: scrH*0.03,
                          //color: Colors.red,
                          child:  const Text(
                            "Wallpaper",
                            style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.w300),
                          ),
                        )
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: InkWell(
                        onTap: () {
                        },
                        child:SizedBox(
                          width: scrW*0.4,
                          height: scrH*0.03,
                          //color: Colors.red,
                          child:  Row(
                            children: [
                              const Text(
                                "More",
                                style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.w300),
                              ),
                              SizedBox(
                                width: 93,
                              ),
                              const Icon(Icons.arrow_forward_ios,color: Colors.white,size: 13,),
                            ],
                          )
                        )
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage("https://images.unsplash.com/photo-1612490689933-b1a150e7aa5b?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
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
                  color: Colors.white,
                ),
                child: Row(
                  children: [
                    IconButton(onPressed: () {}, icon: Icon(Icons.attach_file)),
                    SizedBox(width: 10),
                    Icon(Icons.camera_alt),
                    SizedBox(width: 10),
                    Expanded(
                      child: TextField(
                        controller: _controller,
                        decoration: InputDecoration(
                          hintText: 'Type a message...',
                        ),
                      ),
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
                      icon: Icon(Icons.send),
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
