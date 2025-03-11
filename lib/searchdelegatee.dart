import 'package:flutter/material.dart';

class SimpleSearchDelegate extends SearchDelegate {
  final List<String> contacts = [
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

  @override
  ThemeData appBarTheme(BuildContext context) {
    return ThemeData(
      appBarTheme: AppBarTheme(
        backgroundColor: Color(0xFF0E1717),
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.white70),
        titleTextStyle: TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      scaffoldBackgroundColor: Color(0xFF0E1717),
      inputDecorationTheme: InputDecorationTheme(
        hintStyle: TextStyle(color: Colors.white54),
        border: InputBorder.none,
      ),
    );
  }

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.clear, color: Colors.white70),
        splashRadius: 20,
        onPressed: () {
          if (query.isEmpty) {
            close(context, null);
          } else {
            query = '';
          }
        },
        tooltip: 'Clear',
      ),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.arrow_back_ios, color: Colors.white70),
      splashRadius: 20,
      onPressed: () {
        close(context, null);
      },
      tooltip: 'Back',
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    List<String> matchQuery = contacts
        .where((contact) => contact.toLowerCase().contains(query.toLowerCase()))
        .toList();

    return matchQuery.isEmpty
        ? Center(
            child: Text(
              "No results found",
              style: TextStyle(
                color: Colors.white54,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          )
        : ListView.builder(
            padding: EdgeInsets.all(16),
            itemCount: matchQuery.length,
            itemBuilder: (context, index) {
              return _buildContactTile(context, matchQuery[index]);
            },
          );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> matchQuery = contacts
        .where((contact) => contact.toLowerCase().contains(query.toLowerCase()))
        .toList();

    return Container(
      color: Color(0xFF0E1717),
      child: matchQuery.isEmpty
          ? Padding(
              padding: EdgeInsets.all(16),
              child: Text(
                "Start typing to search contacts",
                style: TextStyle(
                  color: Colors.white54,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            )
          : ListView.builder(
              padding: EdgeInsets.all(16),
              itemCount: matchQuery.length,
              itemBuilder: (context, index) {
                return _buildContactTile(context, matchQuery[index],
                    isSuggestion: true);
              },
            ),
    );
  }

  Widget _buildContactTile(BuildContext context, String contact,
      {bool isSuggestion = false}) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 4),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: isSuggestion
              ? () {
                  query = contact;
                  showResults(context);
                }
              : null,
          borderRadius: BorderRadius.circular(12),
          child: Container(
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.05),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.green.shade600,
                  child: Text(
                    contact[0],
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(width: 12),
                Expanded(
                  child: Text(
                    contact,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                if (!isSuggestion)
                  Icon(
                    Icons.check_circle,
                    color: Colors.green.shade400,
                    size: 20,
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
