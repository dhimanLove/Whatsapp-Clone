import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:whatsapp/searchdelegatee.dart';

class Invite extends StatelessWidget {
  const Invite({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> imageUrls = List.generate(
      15,
      (index) => "https://picsum.photos/100?random=${index + 1}",
    );

    List<String> titles = [
      "John Doe",
      "Jane Smith",
      "Michael Johnson",
      "Emily Davis",
      "Chris Brown",
      "Sarah Wilson",
      "David Taylor",
      "Laura Anderson",
      "James Thomas",
      "Linda Martinez",
      "Robert Garcia",
      "Maria Lopez",
      "William Harris",
      "Elizabeth Clark",
      "James Lewis"
    ];

    List<String> subtitles = [
      "+91 9876543210",
      "+91 9123456789",
      "+91 9988776655",
      "+91 8800123456",
      "+91 9112233445",
      "+91 7777888999",
      "+91 9988112233",
      "+91 8877665544",
      "+91 9123456780",
      "+91 9567894321",
      "+91 8901234567",
      "+91 9054321098",
      "+91 8765432109",
      "+91 9898989898",
      "+91 9001122334"
    ];

    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              showSearch(
                context: context,
                delegate: SimpleSearchDelegate(),
              );
            },
            icon: Icon(Icons.search, color: Colors.white),
          ),
        ],
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: Icon(Icons.arrow_back, color: Colors.white),
        ),
        title: Text("Invite a Friend",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
        backgroundColor: const Color(0xff0B1014),
      ),
      backgroundColor: const Color(0xff0B1014),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                contentPadding: EdgeInsets.zero,
                leading: CircleAvatar(
                  backgroundColor: Colors.green,
                  child: Icon(Icons.share, color: Color(0xFF0E1717)),
                ),
                title: Text("Share Link",
                    style: TextStyle(
                        color: Colors.white70,
                        fontWeight: FontWeight.w600,
                        fontSize: 16)),
              ),
              SizedBox(height: 8),
              Text("From Contacts",
                  style: TextStyle(
                      color: Colors.white54,
                      fontWeight: FontWeight.w500,
                      fontSize: 14)),
              SizedBox(height: 8),
              ListView.separated(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: imageUrls.length,
                separatorBuilder: (context, index) =>
                    Divider(color: Colors.white12),
                itemBuilder: (context, index) {
                  return ListTile(
                    contentPadding: EdgeInsets.zero,
                    leading: CircleAvatar(
                      radius: 24,
                      backgroundImage: NetworkImage(imageUrls[index]),
                    ),
                    title: Text(titles[index],
                        style: TextStyle(
                            color: Colors.white70,
                            fontWeight: FontWeight.w600,
                            fontSize: 17)),
                    subtitle: Text(subtitles[index],
                        style: TextStyle(color: Colors.white54, fontSize: 12)),
                    trailing: Text("Invite",
                        style: TextStyle(
                            color: Colors.green,
                            fontWeight: FontWeight.w500,
                            fontSize: 13)),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
