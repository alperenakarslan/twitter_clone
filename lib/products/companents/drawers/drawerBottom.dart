import 'package:flutter/material.dart';


drawerBottomItems({
    required String text,
    required IconData icon,
  }) {
    final color = Colors.black;

    return ListTile(
      title: Text(
        text,
        style: TextStyle(
          color: color,
        ),
      ),
      trailing: Icon(
        icon,
        color: color,
      ),
    );
  }