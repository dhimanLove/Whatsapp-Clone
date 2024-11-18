import 'package:flutter/material.dart';
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
                border: Border(bottom: BorderSide(color: const Color(0xff0B1014),width: 8))
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
              height: scrH*0.19,
              width: scrW*1,
              color: const Color(0xff13181C),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 16,top: 8),
                    child: Text("Chat with businesses",style: TextStyle(color: Colors.green),),
                  ),
                  SingleChildScrollView(
                    scrollDirection:Axis.horizontal,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 16),
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Container(
                                height: scrH * 0.12,
                                width: scrW * 0.22,
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
                                height: scrH * 0.12,
                                width: scrW * 0.22,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  //border: Border.all(color: Colors.green, width: 2),
                                ),
                                child:  CircleAvatar(
                                  radius: 40,
                                  backgroundImage: NetworkImage('https://static.wikia.nocookie.net/logopedia/images/8/82/HRW.png/revision/latest/scale-to-width-down/200?cb=20200521060842'),
                                  backgroundColor: Colors.transparent,
                                ),
                              ),
                              Text("Sameeksha",style: TextStyle(color:Colors.white,fontWeight: FontWeight.w400,fontSize: 10),)
                            ],
                          ),
                          SizedBox(width: scrW*0.04,),
                          Column(
                            children: [
                              Container(
                                height: scrH * 0.12,
                                width: scrW * 0.22,
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
                                height: scrH * 0.12,
                                width: scrW * 0.22,
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
                                height: scrH * 0.12,
                                width: scrW * 0.22,
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
                                height: scrH * 0.12,
                                width: scrW * 0.22,
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
          ],
        ),
      ),
    );
  }
}
