import 'package:flutter/material.dart';


drawerMenuItem({
    required String text,
    required IconData icon,
  }) {
    final color = Colors.black;

    return ListTile(
      leading: Icon(
        icon,
        color: color,
      ),
      title: Text(
        text,
        style: TextStyle(
          color: color,
        ),
      ),
    );
  }