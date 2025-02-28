import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:whatsapp/Updates/statusprivacy.dart';

class NewContactScreen extends StatefulWidget {
  const NewContactScreen({super.key});

  @override
  State<NewContactScreen> createState() => _NewContactScreenState();
}

class _NewContactScreenState extends State<NewContactScreen> {
  String selectedCountryCode = "IN +91";
  List<String> countryCodes = ["IN +91", "US +1", "UK +44", "CA +1"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0B1014),
      appBar: AppBar(
        backgroundColor: Color(0xff0B1014),
        elevation: 0,
        title: Text("New contact", style: TextStyle(color: Colors.white, fontSize: 22)),
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(Icons.arrow_back, color: Colors.white),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              leading: Icon(Icons.person,color: Colors.white70,),
              title: TextField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  hintText: 'First name',
                  hintStyle: TextStyle(color: Colors.white54,fontWeight: FontWeight.w300),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white70, width: 0.6),
                  ),
                )
              ),
            ),
            ListTile(
              leading: Text("   "),
              title: TextField(
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    hintText: "Last name",
                    hintStyle: TextStyle(color: Colors.white54,fontWeight: FontWeight.w300),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white70, width: 0.6),
                    ),
                  )
              ),
            ),
            SizedBox(height: 20),
            SizedBox(height: 8),
            ListTile(
              leading: Icon(Icons.call),
              title: Row(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                      border: Border(bottom: BorderSide(color: Colors.white70, width: 0.6)),
                    ),
                    child: DropdownButton<String>(
                      value: selectedCountryCode,
                      dropdownColor: Color(0xff0B1014),
                      style: TextStyle(color: Colors.white),
                      iconEnabledColor: Colors.white,
                      underline: SizedBox(),
                      onChanged: (String? newValue) {
                        setState(() {
                          selectedCountryCode = newValue!;
                        });
                      },
                      items: countryCodes.map((code) => DropdownMenuItem(value: code, child: Text(code))).toList(),
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: buildTextField(icon: Icons.phone, hint: "Phone", isPrefixIcon: false),
                  ),
                ],
              ),
            ),
            SizedBox(height: 60),
            GestureDetector(
              onTap: () {},
              child: Text("Add Information", style: TextStyle(color: Colors.green, fontSize: 16)),
            ),
            Spacer(),
           GestureDetector(
             child:  Container(
               width: double.infinity,
               height: 50,
               margin: EdgeInsets.only(bottom: 20),
               decoration: BoxDecoration(
                 color: Colors.green,
                 borderRadius: BorderRadius.circular(25),
               ),
               child: Center(
                 child: Text("Save", style: TextStyle(color: Color(0xff0B1014), fontSize: 18, fontWeight: FontWeight.w300)),
               ),
             ),
             onTap: (){
               GetSnackBar(
                 title: 'Successful',
                 snackbarStatus: (status) => statusp(),
               );
             },
           )
          ],
        ),
      ),
    );
  }

  Widget buildTextField({required IconData icon, required String hint, bool isPrefixIcon = true}) {
    return TextField(
      style: TextStyle(color: Colors.white),
      keyboardType: hint == "Phone" ? TextInputType.phone : TextInputType.text,
      decoration: InputDecoration(
        prefixIcon: isPrefixIcon ? Icon(icon, color: Colors.white70) : null,
        hintText: hint,
        hintStyle: TextStyle(color: Colors.white54),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.white70, width: 0.6),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.blueAccent, width: 1.2),
        ),
      ),
    );
  }
}
