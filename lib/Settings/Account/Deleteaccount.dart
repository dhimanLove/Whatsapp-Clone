import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Deleteaccount extends StatefulWidget {
  const Deleteaccount({super.key});

  @override
  State<Deleteaccount> createState() => _DeleteaccountState();
}

class _DeleteaccountState extends State<Deleteaccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0B1014),
      appBar: AppBar(
        backgroundColor: Color(0xff0B1014),
        title: Text("Delete this account",style: TextStyle(color: Colors.white),),
        leading: IconButton(onPressed: () {
          Get.back();
        },
            icon: Icon(Icons.arrow_back,color: Colors.white,),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                leading: Icon(Icons.warning_amber,color: Colors.red,),
                title: Text("If you delete this account :",style: TextStyle(color: Colors.red),),
              ),
              Padding(padding: EdgeInsets.all(20),
                child: SizedBox(
                  width: 300,
                  height: 250,
                  child:  Text(
                    '''- The account will be deleted from WhatsApp and all your devices\n
- Your message history will be erased\n
- You will be removed from all your WhatsApp groups\n
- Your Google storage backup will be deleted\n
- Delete your payments info
- Any channels you created will be deleted''',
                    style: TextStyle(fontSize: 16, color: Colors.white54),
                  ),
                ),
              ),
              Divider(
                thickness: 0.2,
                color: Colors.white54,
              ),
              SizedBox(
                height: 10,
              ),
              ListTile(
                leading: Icon(Icons.phone_iphone_outlined,color: Colors.white70,),
                title: Text("Change number instead?",style: TextStyle(color: Colors.white70),),
              ),
              GestureDetector(
                onTap: () {
                  Get.dialog(
                      Dialog(
                        backgroundColor: Color(0xff0B1014),
                        child: SizedBox(
                          height: 200,
                          width: 300,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text("Done , Please Verify . .",style: TextStyle(color: Colors.white54,fontSize: 18,fontWeight: FontWeight.w300),),
                              SizedBox(
                                height: 10,
                              ),
                              Icon(Icons.fingerprint_rounded,color: Colors.white54,size: 80,)
                            ],
                          ),
                        ),
                      )
                  );
                },
                child: Center(
                  child: Container(
                      height: 45,
                      width: 150,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Center(
                        child: Text("Change Number",style: TextStyle(color: Color(0xff0B1014),fontWeight: FontWeight.w400),),
                      )
                  ),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Divider(
                thickness: 0.2,
                color: Colors.white54,
              ),
              SizedBox(
                height: 50,
                width: 300,
                child: Text("To delete your account , confirm your country code and enter your phone number",
                  style: TextStyle(color: Colors.white54,fontWeight: FontWeight.w300),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Column(
                children: [
                  Text("Country",style: TextStyle(color: Colors.white54,fontSize: 13),),
                  TextField(
                    style: TextStyle(color: Colors.white70),
                    //controller: _controller,
                    decoration: InputDecoration(
                      focusedBorder: InputBorder.none,
                      border: InputBorder.none,
                      hintText: 'India',
                      hintStyle: TextStyle(color: Colors.white70),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Text("Phone",style: TextStyle(color: Colors.white54,fontSize: 13),),
                  TextField(
                    style: TextStyle(color: Colors.white54),
                    //controller: _controller,
                    decoration: InputDecoration(
                      focusedBorder: InputBorder.none,
                      border: InputBorder.none,
                      hintText: 'Phone number',
                      hintStyle: TextStyle(color: Colors.white54),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.dialog(
                          Dialog(
                            backgroundColor: Color(0xff0B1014),
                            child: SizedBox(
                              height: 200,
                              width: 300,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text("Done , Please Verify . .",style: TextStyle(color: Colors.white54,fontSize: 18,fontWeight: FontWeight.w300),),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Icon(Icons.fingerprint_rounded,color: Colors.white54,size: 80,)
                                ],
                              ),
                            ),
                          )
                      );
                    },
                    child: Center(
                      child: Container(
                          height: 45,
                          width: 150,
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Center(
                            child: Text("Delete Number",style: TextStyle(color: Color(0xff0B1014),fontWeight: FontWeight.w400),),
                          )
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),),
      ),
    );
  }
}
