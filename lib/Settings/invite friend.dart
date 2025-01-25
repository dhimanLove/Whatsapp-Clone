import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Invite extends StatelessWidget {
  const Invite({super.key});

  @override
  Widget build(BuildContext context) {
    List avatars = [
      CircleAvatar(
        child: Image.network("https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg"),
      ),
      CircleAvatar(
        child: Image.network("https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg"),
      ),
      CircleAvatar(
        child: Image.network("https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg"),
      ),
      CircleAvatar(
        child: Image.network("https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg"),
      ),
      CircleAvatar(
        child: Image.network("https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg"),
      ),
      CircleAvatar(
        child: Image.network("https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg"),
      ),
      CircleAvatar(
        child: Image.network("https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg"),
      ),
      CircleAvatar(
        child: Image.network("https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg"),
      ),
      CircleAvatar(
        child: Image.network("https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg"),
      ),
      CircleAvatar(
        child: Image.network("https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg"),
      ),
      CircleAvatar(
        child: Image.network("https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg"),
      ),
      CircleAvatar(
        child: Image.network("https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg"),
      ),
      CircleAvatar(
        child: Image.network("https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg"),
      ),
      CircleAvatar(
        child: Image.network("https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg"),
      ),
      CircleAvatar(
        child: Image.network("https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg"),
      ),
    ];
    List<String> titles = [
      "John Doe", "Jane Smith", "Michael Johnson", "Emily Davis", "Chris Brown",
      "Sarah Wilson", "David Taylor", "Laura Anderson", "James Thomas", "Linda Martinez",
      "Robert Garcia", "Maria Lopez", "William Harris", "Elizabeth Clark", "James Lewis"
    ];

    List<String> subtitles = [
      "+91 9876543210", "+91 9123456789", "+91 9988776655", "+91 8800123456", "+91 9112233445",
      "+91 7777888999", "+91 9988112233", "+91 8877665544", "+91 9123456780", "+91 9567894321",
      "+91 8901234567", "+91 9054321098", "+91 8765432109", "+91 9898989898", "+91 9001122334"
    ];
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
          ),
        ],
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
        title: Text("Invite a friend", style: TextStyle(color: Colors.white)),
        backgroundColor: Color(0xff0e1717),
      ),
      backgroundColor: Color(0xff0e1717),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.green,
                  child: Icon(
                    Icons.share,
                    color: Color(0xff0e1717),
                  ),
                ),
                title: Text("Share link", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontSize: 16)),
              ),
              Text("From Contacts", style: TextStyle(color: Colors.white54)),
              SizedBox(
                height: MediaQuery.of(context).size.height,
                child: ListView.builder(
                    itemCount: avatars.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        leading: avatars[index],
                        title: Text(titles[index], style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontSize: 16)),
                        subtitle: Text(subtitles[index], style: TextStyle(color: Colors.white54)),
                        trailing: Text("Invite", style: TextStyle(color: Colors.green)),
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
