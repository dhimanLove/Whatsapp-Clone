import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Channelsexplore extends StatefulWidget {
  const Channelsexplore({super.key});

  @override
  State<Channelsexplore> createState() => _ChannelsexploreState();
}

class _ChannelsexploreState extends State<Channelsexplore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color(0xff0B1014) ,
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Get.back();
        }, icon:Icon(Icons.arrow_back,color: Colors.white,)
        ),
        backgroundColor:Color(0xff0B1014) ,
        elevation: 0,
        title: Text("Channels",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w300),),
        actions: [
          IconButton(
            icon: Icon(Icons.search_outlined, color: Colors.white),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.filter_list_sharp, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          ListView(
            shrinkWrap: true,
            children: [
              ListTile(
                title: Text("Explore Channels",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w300),),
        trailing: SizedBox(
          height: 34,
          child: ElevatedButton(
            style: ButtonStyle(
              backgroundColor: WidgetStateProperty.all<Color>(Color(0xff1A3A2D)),
              foregroundColor: WidgetStateProperty.all<Color>(Colors.white),
            ),
            onPressed: () {
            },
            child: Text("Follow",style: TextStyle(
              color: Colors.green,
              fontWeight: FontWeight.w300,
            ),),
          ),
        ),),
              ListTile(
                  leading: CircleAvatar(
                    radius:23,
              backgroundImage: NetworkImage("https://plus.unsplash.com/premium_photo-1681483534373-2d9250d3e1e9?q=80&w=2016&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
              ),
                  title: Text('Savita Ki Rasoi',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w300),),
                  subtitle: Text('8M followers',style:
                    TextStyle(color: Colors.white38),),
                  trailing: SizedBox(
                    height: 34,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: WidgetStateProperty.all<Color>(Color(0xff1A3A2D)),
                        foregroundColor: WidgetStateProperty.all<Color>(Colors.white),
                      ),
                      onPressed: () {
                      },
                      child: Text("Follow",style: TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.w300,
                      ),),
                    ),
                  )
              ),
              ListTile(
                  leading: CircleAvatar(
                    radius:23,
                    backgroundImage: NetworkImage("https://images.unsplash.com/photo-1531171491537-435164f3d486?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
                  ),
                  title: Text('Corn Prices',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w300),),
                  subtitle: Text('120M followers',style:
                  TextStyle(color: Colors.white38),),
                  trailing: SizedBox(
                    height: 34,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: WidgetStateProperty.all<Color>(Color(0xff1A3A2D)),
                        foregroundColor: WidgetStateProperty.all<Color>(Colors.white),
                      ),
                      onPressed: () {
                      },
                      child: Text("Follow",style: TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.w300,
                      ),),
                    ),
                  )
              ),
              ListTile(
                  leading: CircleAvatar(
                    radius:23,
                    backgroundImage:
                  
                  NetworkImage("https://images.unsplash.com/photo-1509099836639-18ba1795216d?q=80&w=1931&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")),
                  title: Text('Hungry People',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w300),),
                  subtitle: Text('110M followers',style:
                  TextStyle(color: Colors.white38),),
                  trailing: SizedBox(
                    height: 34,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: WidgetStateProperty.all<Color>(Color(0xff1A3A2D)),
                        foregroundColor: WidgetStateProperty.all<Color>(Colors.white),
                      ),
                      onPressed: () {
                      },
                      child: Text("Follow",style: TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.w300,
                      ),),
                    ),
                  )
              ),
              ListTile(
                  leading: CircleAvatar(
                    radius:23,
                    backgroundImage: NetworkImage("https://i.pinimg.com/736x/85/a5/34/85a534777b97fa0004ee6022a41615cf.jpg")              ),
                  title: Text('Sanskari Balika',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w300),),
                  subtitle: Text('8M followers',style:
                  TextStyle(color: Colors.white38),),
                  trailing: Container(
                    height: 34,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: WidgetStateProperty.all<Color>(Color(0xff1A3A2D)),
                        foregroundColor: WidgetStateProperty.all<Color>(Colors.white),
                      ),
                      onPressed: () {
                      },
                      child: Text("Follow",style: TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.w300,
                      ),),
                    ),
                  )
              ),
            ]
          )
        ],
      ),
    );
  }
}
