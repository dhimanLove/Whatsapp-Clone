import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:whatsapp/Chats/Chats.dart';

class Linkeddev extends StatefulWidget {
  const Linkeddev({super.key});

  @override
  State<Linkeddev> createState() => _PaymentsState();
}

class _PaymentsState extends State<Linkeddev> {
  @override
  Widget build(BuildContext context) {
    var arrlinkl=[CircleAvatar(backgroundImage: NetworkImage("https://static-00.iconduck.com/assets.00/windows-icon-2018x2048-0y0cfqbh.png"),)];
    var arrlinkt=['Windows'];
    var arrlinks=['Last active today at 3:39 pm'];
    var scrw = MediaQuery.of(context).size.width;
    var scrh = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff0B1014),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(
                context,
                MaterialPageRoute(
                  builder: (context)=> Chats(),
                ),
              );
            },
            icon: Icon(Icons.arrow_back,color: Colors.white,)),
        title: Text("Linked devices",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w200),),
      ),

      body: Container(
        width: scrw,
        height: scrh,
        decoration: BoxDecoration(
          border: Border(top: BorderSide(color: Colors.white, width: 0.05)),
          color: const Color(0xff13181C),
        ),
        child: Column(
          children: [
            Container(
              width: scrw*1,
              height: scrh*0.3708,
              color: const Color(0xff0B1014),
              child: Column(
                  children: [
                    SizedBox(height: scrh*0.02,),
                    Container(
                      height: scrh*0.2,
                        width: scrw*0.55,
                        child: Image.asset("lib/assets/payments.png",fit: BoxFit.contain,)
                    ),
                    Text("You can link other devices to this account.",style: TextStyle(fontWeight: FontWeight.w200,color: Colors.white54),),
                    Text("Learn more",style: TextStyle(fontWeight: FontWeight.w200,color: Colors.teal),),
                    SizedBox(height:scrh*0.03,),
                    Container(
                      height: scrh*0.05,
                      width: scrw*0.89,
                      decoration: BoxDecoration(
                        color: Color(0xff26D367),
                        borderRadius: BorderRadius.circular(30)
                      ),
                      child: Center(child: Text("Link a Device",style: TextStyle(fontWeight: FontWeight.w300),)),
                    ),
                  ],
              ),
            ),
            Container(
              height: scrh*0.01,
              color: Colors.transparent,
              width: scrw*1,
            ),
            Column(
              children: [
                Container(
                  width: scrw,
                  height: scrh*0.168,
                  color:const Color(0xff0B1014),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: scrh*0.02,),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text("Device Status",style: TextStyle(color: Colors.white54,fontWeight: FontWeight.w300,fontSize: 13),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text("Tap a device to log out.",style: TextStyle(color: Colors.white54,fontWeight: FontWeight.w300,fontSize: 13.5)),
                      ),
                      SizedBox(),
                      ListView.builder(
                          shrinkWrap: true,
                          itemCount: arrlinkl.length,
                          itemBuilder: (context,index){
                            return ListTile(
                              leading: arrlinkl[index],
                              title: Text(arrlinkt[index],style: TextStyle(color: Colors.white,fontWeight: FontWeight.w200)),
                              subtitle: Text(arrlinks[index],style: TextStyle(color: Colors.white54,fontWeight: FontWeight.w200),),
                            );
                          })
                    ],
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  RichText( // alag alag tet ho jinko styling deni ho , so udhr ye lgta hai 
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "Your Personal messages are  ",
                          style: TextStyle(
                            color: Colors.white54,
                              fontWeight: FontWeight.w200,
                              fontSize: 13
                          ),
                        ),
                        TextSpan(
                          text: "end to end encrypted    ",
                          style: TextStyle(
                            color: Colors.green,
                              fontWeight: FontWeight.w200,
                              fontSize: 13,
                          ),
                          ),
                      ],
                    ),
                  ),
                  Text("on all your devices.",style: TextStyle(color: Colors.white54,fontWeight: FontWeight.w200,fontSize: 13),)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
