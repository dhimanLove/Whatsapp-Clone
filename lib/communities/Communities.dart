import 'package:flutter/material.dart';

class Community extends StatefulWidget {
  const Community({super.key});

  @override
  State<Community> createState() => _chatsState();
}

class _chatsState extends State<Community> {
  @override
  Widget build(BuildContext context) {
    List <String> arrdrawer=['New Group','New Broadcast','Linked devices','Starred Messages','Payments','Settings'];
    var arrlead=[CircleAvatar(backgroundImage: NetworkImage("https://undergrad.cs.umd.edu/sites/undergrad.cs.umd.edu/files/GDSC_Logo_White_Background_0.png"),)];
    var arrtitle=['Volunteers GDG','App Mentoring','General'];
    var arrsub=['Meet at 9:30','Submit the tasks','Krish 123445...'];
    var arrtrail=['9:30 pm','4:45 pm','2:10 pm'];
    var scrh=MediaQuery.of(context).size.height;
    var scrw=MediaQuery.of(context).size.width;
    var color = Color(0xc3d5d5d5);
    var rng = Color(0xc3919191);
    var colr =Color(0xffEFEFEF);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff0B1014),
        title: const Text(
          'Calls',
          style: TextStyle(
            fontSize: 25,
            color: Colors.white,
          ),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.photo_camera_outlined), color: color),
          IconButton(onPressed: () {}, icon: const Icon(Icons.search), color: color),
          Builder(
            builder: (context) {
              return IconButton(
                onPressed: () {
                  Scaffold.of(context).openEndDrawer();
                },
                icon: const Icon(Icons.more_vert),
                color: color,
              );
            },
          ),
        ],
      ),

      endDrawer:
      Padding(
        padding: const EdgeInsets.only(top:70),
        child: Align(
          alignment: Alignment.topRight,
          child: Container(
            width: scrw * 0.5,
            height: scrh * 0.36,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color(0xff171e1e),
            ),
            child: ListView.builder(
              itemCount: arrdrawer.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(
                    arrdrawer[index],
                    style: TextStyle(color: Colors.white70,fontWeight: FontWeight.w400),
                  ),
                );
              },
            ),
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(color: Color(0xff0B1014)),
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 2),
                child: ListView(
                  children: [
                    Container(
                      height: scrh*0.1,
                      decoration: BoxDecoration(  border: Border(bottom: BorderSide(color: Colors.black,width: 8)),),
                      child:
                      ListTile(
                        leading: Container(
                          height: scrh*0.06,
                          width: scrw*0.14,
                          decoration: BoxDecoration(
                            color: rng,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child:Row(children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 3,horizontal: 10),
                              child: Icon(Icons.people,size: 30,),
                            )
                          ],),
                        ),
                        title: Text("New Community",style: TextStyle(fontSize: 23,color: Colors.white),),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 13,top: 10),
                      child: Text("Recents",style: TextStyle(fontSize: 20,color: Colors.white)),
                    ),
                    Container(
                      height: scrh*0.1,
                      decoration: BoxDecoration(  border: Border(bottom: BorderSide(color: Colors.white54,width: 2)),),
                      child:
                      Padding(
                        padding: const EdgeInsets.only(top: 5),
                        child: ListTile(
                          leading: arrlead[0],
                          title: Text("GDG - Volunteers 2024",style: TextStyle(fontSize: 20,color: Colors.white),),
                        ),
                      ),),
                    Padding(
                      padding: const EdgeInsets.only(top:8.0),
                      child: SizedBox(
                        height: scrh*0.1,
                        child:
                        ListTile(
                          leading: Container(
                            height: scrh*0.05,
                            width: scrw*0.12,
                            decoration: BoxDecoration(
                              color: rng,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child:Icon(Icons.mic,color: Colors.green,),
                          ),
                          title: Text("Announcements",style: TextStyle(color: Colors.white),),
                        ),
                      ),
                    ),
                    ListView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: arrtitle.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                          leading: arrlead[0],
                          title: Text(arrtitle[index], style: TextStyle(color: Colors.white)),
                          subtitle: Text(arrsub[index], style: TextStyle(color: Colors.grey)),
                          trailing: Text(arrtrail[index], style: TextStyle(color: Colors.grey)),
                        );
                      },
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left:15),
                      child: Row(children: [Icon(Icons.keyboard_arrow_right_sharp,color: Colors.white54,),Text("View more",style: TextStyle(color: Colors.white),),],),
                    )
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
