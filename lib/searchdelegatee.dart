import 'package:flutter/material.dart';

class PremiumSearchDelegate extends SearchDelegate {
  final List<Map<String, dynamic>> contacts = [
    {"name": "John Doe", "online": true},
    {"name": "Jane Smith", "online": false},
    {"name": "Michael Johnson", "online": true},
    {"name": "Emily Davis", "online": false},
    {"name": "Chris Brown", "online": true},
    {"name": "Sarah Wilson", "online": false},
    {"name": "David Taylor", "online": true},
    {"name": "Laura Anderson", "online": false},
    {"name": "James Thomas", "online": true},
    {"name": "Linda Martinez", "online": false},
    {"name": "Robert Garcia", "online": true},
    {"name": "Maria Lopez", "online": false},
    {"name": "William Harris", "online": true},
    {"name": "Elizabeth Clark", "online": false},
    {"name": "James Lewis", "online": true},
  ];

  @override
  ThemeData appBarTheme(BuildContext context) {
    return ThemeData(
      appBarTheme: AppBarTheme(
        backgroundColor: Color(0xFF202C33),
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.white),
        titleTextStyle: TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.w600,
          fontFamily: 'Roboto',
        ),
      ),
      scaffoldBackgroundColor: Color(0xFF111B21),
      inputDecorationTheme: InputDecorationTheme(
        hintStyle: TextStyle(color: Colors.grey.shade400, fontSize: 16),
        border: InputBorder.none,
        contentPadding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
        filled: true,
        fillColor: Color(0xFF202C33),
      ),
    );
  }

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.clear, color: Colors.white),
        splashRadius: 20,
        onPressed: () {
          if (query.isEmpty) {
            close(context, null);
          } else {
            query = '';
          }
        },
        tooltip: 'Clear search',
      ),
      IconButton(
        icon: Icon(Icons.filter_list, color: Colors.white),
        splashRadius: 20,
        onPressed: () {
          // Placeholder for filter functionality
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('Filter feature coming soon!')),
          );
        },
        tooltip: 'Filter',
      ),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.arrow_back, color: Colors.white),
      splashRadius: 20,
      onPressed: () => close(context, null),
      tooltip: 'Back',
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    final matchQuery = contacts
        .where((contact) =>
        contact['name'].toLowerCase().contains(query.toLowerCase()))
        .toList();

    return matchQuery.isEmpty
        ? Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.search_off, color: Colors.grey.shade500, size: 60),
          SizedBox(height: 16),
          Text(
            "No contacts found",
            style: TextStyle(
              color: Colors.grey.shade500,
              fontSize: 18,
              fontWeight: FontWeight.w400,
              fontFamily: 'Roboto',
            ),
          ),
        ],
      ),
    )
        : _buildContactList(context, matchQuery, false);
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final matchQuery = contacts
        .where((contact) =>
        contact['name'].toLowerCase().contains(query.toLowerCase()))
        .toList();

    return Container(
      color: Color(0xFF111B21),
      child: matchQuery.isEmpty
          ? Padding(
        padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.04),
        child: Text(
          "Search your contacts",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.grey.shade500,
            fontSize: 16,
            fontWeight: FontWeight.w400,
            fontFamily: 'Roboto',
          ),
        ),
      )
          : _buildContactList(context, matchQuery, true),
    );
  }

  Widget _buildContactList(
      BuildContext context, List<Map<String, dynamic>> matchQuery, bool isSuggestion) {
    return ListView.builder(
      padding: EdgeInsets.symmetric(
        vertical: MediaQuery.of(context).size.height * 0.01,
        horizontal: MediaQuery.of(context).size.width * 0.02,
      ),
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        return _buildContactTile(context, matchQuery[index],
            isSuggestion: isSuggestion);
      },
    );
  }

  Widget _buildContactTile(BuildContext context, Map<String, dynamic> contact,
      {bool isSuggestion = false}) {
    final screenWidth = MediaQuery.of(context).size.width;
    final avatarRadius = screenWidth < 400 ? 20.0 : 24.0;

    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: screenWidth * 0.02,
        vertical: screenWidth * 0.005,
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: isSuggestion
              ? () {
            query = contact['name'];
            showResults(context);
          }
              : () {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text('Selected: ${contact['name']}')),
            );
          },
          borderRadius: BorderRadius.circular(12),
          child: AnimatedContainer(
            duration: Duration(milliseconds: 200),
            padding: EdgeInsets.all(screenWidth * 0.03),
            decoration: BoxDecoration(
              color: Color(0xFF1F2C34),
              borderRadius: BorderRadius.circular(12),
              gradient: isSuggestion
                  ? null
                  : LinearGradient(
                colors: [Color(0xFF1F2C34), Color(0xFF2A3B45)],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  blurRadius: 4,
                  offset: Offset(0, 2),
                ),
              ],
            ),
            child: Row(
              children: [
                Stack(
                  children: [
                    CircleAvatar(
                      radius: avatarRadius,
                      backgroundColor: Color(0xFF00A884),
                      child: Text(
                        contact['name'][0],
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: avatarRadius * 0.8,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    if (contact['online'])
                      Positioned(
                        right: 0,
                        bottom: 0,
                        child: Container(
                          width: avatarRadius * 0.4,
                          height: avatarRadius * 0.4,
                          decoration: BoxDecoration(
                            color: Colors.green,
                            shape: BoxShape.circle,
                            border: Border.all(color: Color(0xFF111B21), width: 2),
                          ),
                        ),
                      ),
                  ],
                ),
                SizedBox(width: screenWidth * 0.03),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        contact['name'],
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: screenWidth * 0.045,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Roboto',
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        contact['online'] ? "Online" : "Last seen recently",
                        style: TextStyle(
                          color: Colors.grey.shade500,
                          fontSize: screenWidth * 0.035,
                          fontFamily: 'Roboto',
                        ),
                      ),
                    ],
                  ),
                ),
                if (!isSuggestion)
                  Padding(
                    padding: EdgeInsets.only(right: screenWidth * 0.02),
                    child: Icon(
                      Icons.check_circle,
                      color: Color(0xFF00A884),
                      size: screenWidth * 0.05,
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}