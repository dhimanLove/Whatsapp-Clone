import 'package:flutter/material.dart';

class ManageStoragePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Manage storage', style: TextStyle(color: Colors.white70)),
        backgroundColor: Color(0xff0B1014),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white70),
          onPressed: () {},
        ),
      ),
      body: Container(
        color: Color(0xff0B1014),
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Storage Summary
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('2.8 GB', style: TextStyle(color: Colors.white70, fontSize: 20, fontWeight: FontWeight.w300)),
                    Text('Used', style: TextStyle(color: Colors.grey)),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text('60 GB', style: TextStyle(color: Colors.white70, fontSize: 20, fontWeight: FontWeight.w300)),
                    Text('Free', style: TextStyle(color: Colors.grey)),
                  ],
                ),
              ],
            ),
            SizedBox(height: 16),
            // Progress Bar
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: LinearProgressIndicator(
                value: 0.4,
                backgroundColor: Colors.grey.shade800,
                color: Colors.yellow,
                minHeight: 8,
              ),
            ),
            SizedBox(height: 24),
            // Section: Review and Delete Items
            Text('Review and delete items', style: TextStyle(color: Colors.white70, fontSize: 16, fontWeight: FontWeight.w300)),
            SizedBox(height: 16),
            // Forwarded Items
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Forwarded many times', style: TextStyle(color: Colors.white70)),
                Text('94.1 MB', style: TextStyle(color: Colors.grey)),
              ],
            ),
            SizedBox(height: 16),
            // Larger than 5MB
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Larger than 5 MB', style: TextStyle(color: Colors.white70)),
                Text('1.3 GB', style: TextStyle(color: Colors.grey)),
              ],
            ),
            SizedBox(height: 24),
            // Tools Section
            Text('Tools to save space', style: TextStyle(color: Colors.white70, fontSize: 16, fontWeight: FontWeight.w300)),
            SizedBox(height: 16),
            // Tool 1: Turn on disappearing messages
            ListTile(
              contentPadding: EdgeInsets.zero,
              leading: Icon(Icons.timer, color: Colors.white70),
              title: Text('Turn on disappearing messages', style: TextStyle(color: Colors.white70)),
              subtitle: Text('Stay in control of future storage needs', style: TextStyle(color: Colors.grey)),
              onTap: () {},
            ),
            Divider(color: Colors.grey.shade800),
            // Tool 2: Manage downloads
            ListTile(
              contentPadding: EdgeInsets.zero,
              leading: Icon(Icons.download, color: Colors.white70),
              title: Text('Manage downloads', style: TextStyle(color: Colors.white70)),
              subtitle: Text('Save storage by deleting app downloads', style: TextStyle(color: Colors.grey)),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
