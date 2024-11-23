import 'package:flutter/material.dart';
import 'package:whatsapp/Chats/Chats.dart';

class Group extends StatefulWidget {
  const Group({super.key});

  @override
  State<Group> createState() => _GroupState();
}

class _GroupState extends State<Group> {
  @override
  Widget build(BuildContext context) {
    var scrh = MediaQuery.of(context).size.height;
    var scrw = MediaQuery.of(context).size.width;

    List<Widget> arrLeading = [
      const CircleAvatar(
        backgroundImage: NetworkImage(
            "https://images.unsplash.com/photo-1541752171745-4176eee47556?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"), // Aarav Sharma (Male)
        backgroundColor: Colors.transparent,
      ),
      const CircleAvatar(
        backgroundImage: NetworkImage(
            "https://images.unsplash.com/photo-1581091877286-979c6f103cad?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"), // Meera Kapoor (Female)
        backgroundColor: Colors.transparent,
      ),
      const CircleAvatar(
        backgroundImage: NetworkImage(
            "https://images.unsplash.com/photo-1566753323558-f4e0952af115?q=80&w=1921&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"), // Kabir Verma (Male)
        backgroundColor: Colors.transparent,
      ),
      const CircleAvatar(
        backgroundImage: NetworkImage(
            "https://images.unsplash.com/photo-1487546331507-fcf8a5d27ab3?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"), // Riya Singh (Female)
        backgroundColor: Colors.transparent,
      ),
      const CircleAvatar(
        backgroundImage: NetworkImage(
            "https://plus.unsplash.com/premium_photo-1678288606244-71ca32f243f9?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"), // Ananya Roy (Female)
        backgroundColor: Colors.transparent,
      ),
    ];
    List<String> arrlen = [
      "Aarav Sharma",
      "Meera Kapoor",
      "Kabir Verma",
      "Riya Singh",
      "Ananya Roy"
    ];
    var arrSubtitle = [
      "Kaam ho gaya kya?",
      "Party kab hai?",
      "Code review pending hai.",
      "Meeting rescheduled.",
      "Nayi update aayi hai!"
    ];


    List<Widget> arr2l = [
      const CircleAvatar(
        backgroundImage: NetworkImage(
            'https://images.unsplash.com/photo-1599566150163-29194dcaad36?crop=faces&fit=crop&w=400&h=400&q=80'), // Aarav Sharma (Male)
        backgroundColor: Colors.transparent,
      ),
      const CircleAvatar(
        backgroundImage: NetworkImage(
            'https://images.unsplash.com/photo-1524504388940-b1c1722653e1?crop=faces&fit=crop&w=400&h=400&q=80'), // Meera Kapoor (Female)
        backgroundColor: Colors.transparent,
      ),
      const CircleAvatar(
        backgroundImage: NetworkImage(
            "https://images.unsplash.com/photo-1610389051254-64849803c8fd?q=80&w=2071&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"), // Kabir Verma (Male)
        backgroundColor: Colors.transparent,
      ),
      const CircleAvatar(
        backgroundImage: NetworkImage(
            'https://images.unsplash.com/photo-1665686308827-eb62e4f6604d?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'), // Riya Singh (Female)
        backgroundColor: Colors.transparent,
      ),
    ];
    var arr2t=[
      "Aarav Sharma",
      "Meera Kapoor",
      "Kabir Verma",
      "Riya Singh",
    ];
    var arr2s=[
      "Adventure awaits – let's explore!",
      "Making memories, one step at a time.",
      "Innovator by day, creator by night.",
      "Life's too short to not enjoy every moment.",
      "Work hard, stay humble, and never stop dreaming.",
      "Striving for greatness in everything I do."
    ];


    var weight = FontWeight.w300;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xff13181C),
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
              MaterialPageRoute(builder: (context)=>Chats()) ;
            },
            icon: Icon(Icons.arrow_back, color: Colors.white,size: 22,),
          ),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "New group",
                style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w300),
              ),
              Text("Add members" ,style: TextStyle(color: Colors.white,fontSize: 12,fontWeight: FontWeight.w300))
            ],
          ),
          actions: [
            IconButton(onPressed: (){}, icon: Icon(Icons.search,color: Colors.white,))
          ],
        ),
      body: Container(
        width: scrw*1,
        decoration: const BoxDecoration(color: Color(0xff0B1014)
      ),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 17,top: 10),
                child: Text("Frequently contacted",style: TextStyle(
                  color: Colors.white70,fontWeight: weight ),
                ),
              ),
              Container(
                height: scrh*0.45,
                child: Expanded(child:
                ListView.builder(
                    shrinkWrap: true,
                    itemCount:arrlen.length,
                    itemBuilder: (context,index){
                     return ListTile(
                        leading: arrLeading[index],
                        title: Text(arrlen[index],style: TextStyle(color: Colors.white,fontWeight: FontWeight.w200),),
                        subtitle: Text(arrSubtitle[index],style: TextStyle(color: Colors.white38)),
                      );
                    }),
                ),
              ),
              Container(
                height: scrh*0.55,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 17,top: 7),
                      child: Text("Contacts on Whatsapp",style: TextStyle(
                          color: Colors.white70,fontWeight: weight ),
                      ),
                    ),
                    Expanded(child:
                    ListView.builder(
                        itemCount: arr2l.length,
                        itemBuilder: (context,index){
                      return ListTile(
                        leading: arr2l[index],
                        title: Text(arr2t[index],style: TextStyle(color: Colors.white,fontWeight: FontWeight.w200)),
                        subtitle: Text(arr2s[index],style: TextStyle(color: Colors.white54)),
                      );
                    })
                    )
                  ],
                ),

              ),
            ],
          ),
        ),
    ));
  }
}
