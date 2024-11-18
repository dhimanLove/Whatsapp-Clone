import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:whatsapp/Chats/Chats.dart';

class Payments extends StatefulWidget {
  const Payments({super.key});

  @override
  State<Payments> createState() => _PaymentsState();
}

class _PaymentsState extends State<Payments> {
  @override
  Widget build(BuildContext context) {
    var scrH = MediaQuery.of(context).size.height;
    var scrW = MediaQuery.of(context).size.width;
    var arrlead = [
      CircleAvatar(
        child: Icon(
          Icons.currency_rupee_rounded,
          color: Colors.green,
        ),
        backgroundColor: Colors.transparent,
      ),
      CircleAvatar(
        child: Icon(
          Icons.qr_code,
          color: Colors.green,
        ),
        backgroundColor: Colors.transparent,
      ),
    ];
    var arrtit1 = ['Send payment', 'Scan any UPI QR code'];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff13181C),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back, color: Colors.white),
        ),
        title: Text(
          "Payments",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          border: Border(top: BorderSide(color: Colors.white, width: 0.1)),
          color: const Color(0xff0B1014),
        ),
        child: Column(
          children: [
            Container(
              height: scrH*0.17,
              decoration: BoxDecoration(
                color: const Color(0xff13181C),
                border: Border(bottom: BorderSide(color:  Color(0xff0B1014),width: 8))
              ),
              child: Expanded(
                child: ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: arrlead.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: arrlead[index],
                      title: Text(
                        arrtit1[index],
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                    );
                  },
                ),
              ),
            ),
            Container(
              height: scrH*0.2,
              width: scrW*1,
              decoration: BoxDecoration(
                color: Color(0xff13181C),
                  border: Border(bottom: BorderSide(color:  Color(0xff0B1014),width: 8))
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 16,top: 8),
                    child: Text("Chat with businesses",style: TextStyle(color: Colors.green),),
                  ),
                  SizedBox(height: scrH*0.01,),
                  SingleChildScrollView(
                    scrollDirection:Axis.horizontal,
                    child: Padding(
                      padding: EdgeInsets.only(left: 16),
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Container(
                                 height: scrH * 0.1,
                                width: scrW * 0.2,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  //border: Border.all(color: Colors.green, width: 2),
                                ),
                                child:  CircleAvatar(
                                  radius: 40,
                                  backgroundImage: NetworkImage('https://e7.pngegg.com/pngimages/465/598/png-clipart-railway-recruitment-board-exam-rrb-rail-transport-indian-railways-south-east-central-railway-zone-india-text-logo-thumbnail.png'),
                                  backgroundColor: Colors.transparent,
                                ),
                              ),
                              Text("Indian Railways",style: TextStyle(color:Colors.white,fontWeight: FontWeight.w400,fontSize: 10),)
                            ],
                          ),
                          SizedBox(width: scrW*0.04,),
                          Column(
                            children: [
                              Container(
                                height: scrH * 0.1,
                                width: scrW * 0.2,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  //border: Border.all(color: Colors.green, width: 2),
                                ),
                                child:  CircleAvatar(
                                  radius: 30,
                                  backgroundImage: NetworkImage('https://static.wikia.nocookie.net/logopedia/images/8/82/HRW.png/revision/latest/scale-to-width-down/200?cb=20200521060842'),
                                  backgroundColor: Colors.transparent,
                                ),
                              ),
                              Text("Haryana Roadways",style: TextStyle(color:Colors.white,fontWeight: FontWeight.w400,fontSize: 10),)
                            ],
                          ),
                          SizedBox(width: scrW*0.04,),
                          Column(
                            children: [
                              Container(
                                height: scrH * 0.1,
                                width: scrW * 0.2,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  //border: Border.all(color: Colors.green, width: 2),
                                ),
                                child:  CircleAvatar(
                                  radius: 40,
                                  backgroundImage: NetworkImage('https://e7.pngegg.com/pngimages/465/598/png-clipart-railway-recruitment-board-exam-rrb-rail-transport-indian-railways-south-east-central-railway-zone-india-text-logo-thumbnail.png'),
                                  backgroundColor: Colors.transparent,
                                ),
                              ),
                              Text("Kartik",style: TextStyle(color:Colors.white,fontWeight: FontWeight.w400,fontSize: 10),)
                            ],
                          ),
                          SizedBox(width: scrW*0.04,),
                          Column(
                            children: [
                              Container(
                                 height: scrH * 0.1,
                                width: scrW * 0.2,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  //border: Border.all(color: Colors.green, width: 2),
                                ),
                                child:  CircleAvatar(
                                  radius: 40,
                                  backgroundImage: NetworkImage('https://e7.pngegg.com/pngimages/465/598/png-clipart-railway-recruitment-board-exam-rrb-rail-transport-indian-railways-south-east-central-railway-zone-india-text-logo-thumbnail.png'),
                                  backgroundColor: Colors.transparent,
                                ),
                              ),
                              SizedBox(height:scrH*0.01,),
                              Text("Dhruv",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w200,fontSize: 10),)
                            ],
                          ),
                          SizedBox(width: scrW*0.04,),
                          Column(
                            children: [
                              Container(
                                 height: scrH * 0.1,
                                width: scrW * 0.2,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  //border: Border.all(color: Colors.green, width: 2),
                                ),
                                child:  CircleAvatar(
                                  radius: 40,
                                  backgroundImage: NetworkImage('https://e7.pngegg.com/pngimages/465/598/png-clipart-railway-recruitment-board-exam-rrb-rail-transport-indian-railways-south-east-central-railway-zone-india-text-logo-thumbnail.png'),
                                  backgroundColor: Colors.transparent,
                                ),
                              ),
                              SizedBox(height:scrH*0.01,),
                              Text("Krish",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w200,fontSize: 10),)
                            ],
                          ),
                          SizedBox(width: scrW*0.04,),
                          Column(
                            children: [
                              Container(
                                 height: scrH * 0.1,
                                width: scrW * 0.2,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  //border: Border.all(color: Colors.green, width: 2),
                                ),
                                child:  CircleAvatar(
                                  radius: 40,
                                  backgroundImage: NetworkImage('https://zerocreativity0.wordpress.com/wp-content/uploads/2016/04/indian-airlines-classic-logos-of-india-zero-creativty.jpg'),
                                  backgroundColor: Colors.transparent,
                                ),
                              ),
                              SizedBox(height:scrH*0.01,),
                              Text("Rudra",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w200,fontSize: 10),)
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: scrH*0.19,
              width: scrW*1,
              decoration: BoxDecoration(
                  color: Color(0xff13181C),
                  border: Border(bottom: BorderSide(color:  Color(0xff0B1014),width: 8))
              ),
              child:Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 16,top: 8),
                    child: Text("History",style: TextStyle(color: Colors.green),),
                  ),
                  Center(
                    child: Column(
                      children: [
                        FaIcon(FontAwesomeIcons.receipt,color: Colors.white60,size: 70,),
                        SizedBox(height: scrH*0.01,),
                        Text("No Payment History",style: TextStyle(color: Colors.white70,fontWeight: FontWeight.w300,fontSize: 12),)
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: scrH*0.24,
              width: scrW*1,
              decoration: BoxDecoration(
                  color: Color(0xff13181C),
                  border: Border(bottom: BorderSide(color:  Color(0xff0B1014),width: 8))
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 16,top: 8),
                    child: Text("Payment methods",style: TextStyle(color: Colors.green),),
                  ),
                  Expanded(
                      child: ListView(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 9,vertical: 20),
                            child: Container(
                              height: scrH*0.09,
                              decoration: BoxDecoration(color: Color(0xff252f36),borderRadius: BorderRadius.circular(20)),
                              child: ListTile(
                                leading: Icon(Icons.lock,size: 26,),
                                title: RichText( // alag alag tet ho jinko styling deni ho , so udhr ye lgta hai
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: "To protect your sequrity. Whatsapp does not store your UPI PIN or full bank account number .",
                                        style: TextStyle(
                                            color: Colors.white70,
                                            fontWeight: FontWeight.w300,
                                          fontSize: 14,
                                        ),
                                      ),
                                      TextSpan(
                                        text: "  Learn more    ",
                                        style: TextStyle(
                                          color: Colors.green,
                                          fontWeight: FontWeight.w200,
                                          fontSize: 13,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      )
                  ),
                  ListTile(
                    leading: Icon(Icons.add_circle_outline_rounded,color: Colors.white70),
                    title: Text("Add payment method",style: TextStyle(color: Colors.white70),),
                  )

                ],
              ),
            ),
            Container(
              height: scrH*0.08,
              width: scrW*1,
              decoration: BoxDecoration(
                  color: Color(0xff13181C),
                  border: Border(bottom: BorderSide(color:  Color(0xff0B1014),width: 8),),
              ),
              child: ListTile(
                leading: Icon(Icons.question_mark,color: Colors.white70,),
                title: Text("Help",style: TextStyle(color: Colors.white70),),
              ),
            )
          ],
        ),
      ),
    );
  }
}
