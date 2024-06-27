import 'package:flutter/material.dart';

Widget buildListItem(Map<String, dynamic> item, {VoidCallback? onTap}) {
  return Card(
    elevation: 4,
    margin: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
    child: ListTile(
      contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      title: Text(
        item['title'],
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),
      subtitle: Text(
        item['body'],
        style: TextStyle(fontSize: 14),
      ),
      trailing: Icon(Icons.arrow_forward),
      onTap: onTap,
    ),
  );
}
