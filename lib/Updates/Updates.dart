import 'package:flutter/material.dart';
import 'package:gradient_icon/gradient_icon.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
//import 'package:google_fonts/google_fonts.dart';

class Updates extends StatefulWidget {
  const Updates({super.key});

  @override
  State<Updates> createState() => _chatsState();
}

class _chatsState extends State<Updates> {
  @override
  Widget build(BuildContext context) {
    var arrNames=['Status Privacy','Create Channel','Settings'];
    var color = const Color(0xc3d5d5d5);
    var rng = const Color(0xc3919191);
    var colr =const Color(0xffEFEFEF);
    var scrh=MediaQuery.of(context).size.height;
    var scrw=MediaQuery.of(context).size.width;

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
        endDrawer: Padding(
          padding: const EdgeInsets.only(top:70),
          child: Align(
            alignment: Alignment.topRight,
            child: Container(
              width: scrw * 0.6,
              height: scrh * 0.26,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xff171e1e),
              ),
              child: ListView.builder(
                itemCount: arrNames.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(arrNames[index],style: TextStyle(color: Colors.white70),),
                  );
                },
              ),
            ),
          ),
        ),
      body:
      Container(
        decoration:const BoxDecoration(
            color: Color(0xff0B1014)
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 15,top: 15),
              child: Container(
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(width: 0.1, color:colr),
                  ),
                ),
                child: Column(
                  children: [
                    const Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10,vertical: 8),
                          child: Text("Status",style: TextStyle(color: Colors.white,fontSize: 23,fontWeight: FontWeight.w200),
                          ),
                        )
                    ],
                  ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8,vertical: 8),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            Column(
                              children: [
                                Container(
                                    height: scrh*0.085,
                                    width: scrw*0.19,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(36),
                                      border: Border.all(color: Colors.green,width: 2),
                                    ),
                                    child: const CircleAvatar(backgroundImage: NetworkImage("https://images.unsplash.com/photo-1535382651921-5e77ea4458f2?q=80&w=2071&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),)),
                                SizedBox(height:scrh*0.01,),
                                Text("My Status",style: TextStyle(color: colr,fontWeight: FontWeight.w200,fontSize: 10),)
                              ],
                            ),
                            SizedBox(width: scrw*0.04,),
                            Column(
                              children: [
                                Container(
                                    height: scrh*0.085,
                                    width: scrw*0.19,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(36),
                                      border: Border.all(color: Colors.green,width: 2),
                                    ),
                                    child: const CircleAvatar(backgroundImage: NetworkImage("https://cdn3.iconfinder.com/data/icons/finance-503/256/Analytics_Chart_Diagram_Pie_graph_Sales_report_Statistics_Stats.png"),backgroundColor:Colors.transparent,)),
                                SizedBox(height:scrh*0.01,),
                                Text("Sameeksha",style: TextStyle(color: colr,fontWeight: FontWeight.w200,fontSize: 10),)
                              ],
                            ),
                            SizedBox(width: scrw*0.04,),
                            Column(
                              children: [
                                Container(
                                    height: scrh*0.085,
                                    width: scrw*0.19,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(36),
                                      border: Border.all(color: Colors.green,width: 2),
                                    ),
                                    child: const CircleAvatar(backgroundImage: NetworkImage("https://cdn3.iconfinder.com/data/icons/finance-503/256/Cash_Coin_Hand_Income_Investment_Money_Donation.png"),backgroundColor: Colors.transparent,)),
                                SizedBox(height:scrh*0.01,),
                                Text("Kartik",style: TextStyle(color: colr,fontWeight: FontWeight.w200,fontSize: 10),)
                              ],
                            ),
                            SizedBox(width: scrw*0.04,),
                            Column(
                              children: [
                                Container(
                                    height: scrh*0.085,
                                    width: scrw*0.19,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(36),
                                      border: Border.all(color: Colors.green,width: 2),
                                    ),
                                    child: const CircleAvatar(backgroundImage: NetworkImage("https://images.unsplash.com/photo-1535382651921-5e77ea4458f2?q=80&w=2071&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),)),
                                SizedBox(height:scrh*0.01,),
                                Text("Dhruv",style: TextStyle(color: colr,fontWeight: FontWeight.w200,fontSize: 10),)
                              ],
                            ),
                            SizedBox(width: scrw*0.04,),
                            Column(
                              children: [
                                Container(
                                    height: scrh*0.085,
                                    width: scrw*0.19,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(36),
                                      border: Border.all(color: Colors.green,width: 2),
                                    ),
                                    child: const CircleAvatar(backgroundImage: NetworkImage("https://images.unsplash.com/photo-1535382651921-5e77ea4458f2?q=80&w=2071&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),)),
                                SizedBox(height:scrh*0.01,),
                                Text("Krish",style: TextStyle(color: colr,fontWeight: FontWeight.w200,fontSize: 10),)
                              ],
                            ),
                            SizedBox(width: scrw*0.04,),
                            Column(
                              children: [
                                Container(
                                    height: scrh*0.085,
                                    width: scrw*0.19,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(36),
                                      border: Border.all(color: Colors.green,width: 2),
                                    ),
                                    child: const CircleAvatar(backgroundImage: NetworkImage("https://images.unsplash.com/photo-1535382651921-5e77ea4458f2?q=80&w=2071&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),)),
                                SizedBox(height:scrh*0.01,),
                                Text("Rudra",style: TextStyle(color: colr,fontWeight: FontWeight.w200,fontSize: 10),)
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],

                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    Text("Channels",style: TextStyle(color: colr,fontSize: 25),),
                    Row(
                      children: [
                        const Text("Explore",style: TextStyle(color: Colors.green),),
                        SizedBox(
                          width: scrw*0.01,
                        ),
                        const FaIcon(FontAwesomeIcons.angleRight,color: Colors.green,size: 12,)
                      ],
                    ),
                  ],
                 ),
                  SizedBox(height: scrh*0.02,),
               ],
              ),
            ),

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    Card(
                      color: Colors.transparent,
                      elevation: 20,
                      child: Container(
                        height: scrh*0.2,
                        width: scrw*0.35,
                        decoration: BoxDecoration(
                          borderRadius:BorderRadius.circular(10),
                          border: Border.all(color: Colors.white60,width: 0.4),
                          color: Colors.transparent,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            const CircleAvatar(backgroundImage: NetworkImage("https://cdn3.iconfinder.com/data/icons/product-management-26/256/Creativity.png"),),
                            Text("Hello",style: TextStyle(color: colr),),
                            SizedBox(
                              height: scrh*0.05,
                              width: scrw*0.25,
                              child: ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => const Updates()),
                                  );
                                },
                                style:
                                ElevatedButton.styleFrom(
                                  foregroundColor: Colors.white, backgroundColor: Colors.green,),
                                child: const Text('Join'),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: scrw*0.02,),
                    Card(
                      elevation: 20,
                      color: Colors.transparent,
                      child: Container(
                        height: scrh*0.2,
                        width: scrw*0.35,
                        decoration: BoxDecoration(
                          borderRadius:BorderRadius.circular(10),
                          border: Border.all(color: Colors.white60,width: 0.4),
                          color: Colors.transparent,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            const CircleAvatar(backgroundImage: NetworkImage("https://cdn3.iconfinder.com/data/icons/finance-503/256/Cash_Coin_Hand_Income_Investment_Money_Donation.png"),),
                            Text("Money",style: TextStyle(color: colr),),
                            SizedBox(
                              height: scrh*0.05,
                              width: scrw*0.25,
                              child: ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => const Updates()),
                                  );
                                },
                                style:
                                ElevatedButton.styleFrom(
                                  foregroundColor: Colors.white, backgroundColor: Colors.green,),
                                child: const Text('Join'),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: scrw*0.02,),
                    Card(
                      elevation: 20,
                      color: Colors.transparent,
                      child: Container(
                        height: scrh*0.2,
                        width: scrw*0.35,
                        decoration: BoxDecoration(
                          borderRadius:BorderRadius.circular(10),
                          border: Border.all(color: Colors.white60,width: 0.4),
                          color: Colors.transparent,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            const CircleAvatar(backgroundImage: NetworkImage("https://cdn3.iconfinder.com/data/icons/product-management-26/256/Creativity.png"),),
                            Text("Hello",style: TextStyle(color: colr),),
                            SizedBox(
                              height: scrh*0.05,
                              width: scrw*0.25,
                              child: ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => const Updates()),
                                  );
                                },
                                style:
                                ElevatedButton.styleFrom(
                                  foregroundColor: Colors.white, backgroundColor: Colors.green,),
                                child: const Text('Join'),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: scrw*0.02,),
                    Card(
                      color: Colors.transparent,
                      elevation: 20,
                      child: Container(
                        height: scrh*0.2,
                        width: scrw*0.35,
                        decoration: BoxDecoration(
                          borderRadius:BorderRadius.circular(10),
                          border: Border.all(color: Colors.white60,width: 0.4),
                          color: Colors.transparent,
                        ),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                        const CircleAvatar(backgroundImage: NetworkImage("https://cdn3.iconfinder.com/data/icons/product-management-26/256/Creativity.png"),),
                      Text("Hello",style: TextStyle(color: colr),),
                      SizedBox(
                          height: scrh*0.05,
                          width: scrw*0.25,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const Updates()),
                              );
                            },
                            style:
                            ElevatedButton.styleFrom(
                              foregroundColor: Colors.white, backgroundColor: Colors.green,),
                            child: const Text('Join'),
                          ),
                      ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),)])));
  }
}
