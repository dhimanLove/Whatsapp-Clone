import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gradient_icon/gradient_icon.dart';
import 'package:whatsapp/chats/details.dart';

class Broad extends StatefulWidget {
  const Broad ({super.key});

  @override
  State<Broad> createState() => _ChatsState();
}

class _ChatsState extends State<Broad> {

  List<Widget> arrLeading = [
    const CircleAvatar(
      backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTU0vMJn9NTpca8c7waspkH6MoWdoWDqbEi4BtZxMPqs41YTzdBihpSh8Az5n0ORMQwz5Y&usqp=CAU"),
      backgroundColor: Colors.transparent,
    ),
    const CircleAvatar(
      backgroundImage: NetworkImage("https://images.unsplash.com/photo-1572647678520-ebef18aa78cc?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
      backgroundColor: Colors.transparent,
    ),
    const CircleAvatar(
      backgroundImage: NetworkImage("https://images.unsplash.com/photo-1662306616121-34a330735f2c?q=80&w=1965&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
      backgroundColor: Colors.transparent,
    ),
    const CircleAvatar(
      backgroundImage: NetworkImage("https://images.unsplash.com/photo-1533473359331-0135ef1b58bf?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
      backgroundColor: Colors.transparent,
    ),
    const CircleAvatar(
      backgroundImage: NetworkImage('https://images.unsplash.com/photo-1531386151447-fd76ad50012f?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
      backgroundColor: Colors.transparent,
    ),
    const CircleAvatar(
      backgroundImage: NetworkImage('https://images.unsplash.com/photo-1437502920657-db9708bfe2ef?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
      backgroundColor: Colors.transparent,
    ),
    const CircleAvatar(
      backgroundImage: NetworkImage("https://images.unsplash.com/photo-1453396450673-3fe83d2db2c4?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
      backgroundColor: Colors.transparent,
    ),
    const CircleAvatar(
      backgroundImage: NetworkImage('https://images.unsplash.com/photo-1610926597998-fc7f2c1b89b0?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
      backgroundColor: Colors.transparent,
    ),
    const CircleAvatar(
      backgroundImage: NetworkImage('https://images.unsplash.com/photo-1725902380927-081e7400b920?q=80&w=1915&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
      backgroundColor: Colors.transparent,
    ),
  ];

  List<String> arrNames = [
    'App Mentoring',
    'Sukhi',
    'Kartik',
    'Dhruv',
    'Kungsu',
    'Ajay Bhaiya GDG',
    'Tinku Jiya',
    'Project wala',
    'Project wala',
  ];

  var arrSubtitle = [
    "You: Meeting kab h sir?",
    "Praa Friday hai...",
    "Bahr chalte hai",
    "Join the Meet Fast!",
    "Awaz bnd kr!",
    "Awaz bnd kr!",
    "h",
    "Jacket tick-tick kr...",
    "Chal Bahr chlte hai!",
  ];

  @override
  Widget build(BuildContext context) {
    var scrh = MediaQuery.of(context).size.height;
    var scrw = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff13181C),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back, color: Colors.white,size: 22,),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "New broadcast",
              style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w300),
            ),
            Text("0 of 256 selected " ,style: TextStyle(color: Colors.white,fontSize: 12,fontWeight: FontWeight.w300))
          ],
        ),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.search,color: Colors.white,))
        ],
      ),
      body: Container(
        decoration: const BoxDecoration(color: Color(0xff0B1014)),
        child: Column(
          children: [
            Container(
              height: scrh*0.089,
              width: scrw*0.95,
              decoration: BoxDecoration(
                //color: Colors.red,
                border: Border(bottom: BorderSide(color: Colors.white30,width: 0.3,),
               // top: BorderSide(color: Colors.white70,width: 0.2),
              ),
            ),
            child: Align(alignment:Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Only contacts with +91 8398919452 in their adress",style: TextStyle(color: Colors.white54,fontWeight: FontWeight.w300),),
                  Text("book will recieve your broadcast messages.",style: TextStyle(color: Colors.white54,fontWeight: FontWeight.w300),)
                ],
              )),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 175,top: 7,bottom: 3),
              child: Text("Contacts onn Whatsapp",style: TextStyle(color: Colors.white54,fontWeight: FontWeight.w300),),
            ),
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: arrLeading.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading:arrLeading[index],
                    title: Text(
                      arrNames[index],
                      style: const TextStyle(color: Color(0xffEFEFEF)),
                    ),
                    subtitle: Text(
                      softWrap: true,
                      overflow: TextOverflow.ellipsis,
                      arrSubtitle[index],style: TextStyle(color: Colors.white54),
                    ),
                  );
                  },
              ),
            ),
          ],
        ),
      ),
    );
  }
}