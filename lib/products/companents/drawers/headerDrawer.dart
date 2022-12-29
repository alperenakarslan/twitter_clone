import 'package:flutter/material.dart';


drawerHeader({
    required String name,
    required String userName,
    required String follow,
    required String follower,
    required IconData icon,
    required AssetImage image,
    required AssetImage secondImage,
    required IconData trailIcon,
  }) {
    final color = Colors.black;
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: CircleAvatar(
                radius: 25,
                backgroundImage: image,
              ),
            ),
            Row(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: CircleAvatar(
                    radius: 17,
                    backgroundImage: secondImage,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: CircleAvatar(
                    radius: 17,
                    backgroundColor: color,
                    child: CircleAvatar(
                      radius: 16,
                      backgroundColor: Colors.white,
                      child: Icon(
                        trailIcon,
                        color: color,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        Row(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Text(
                name,
                style: TextStyle(color: color, fontSize: 16),
              ),
            ),
            Icon(
              icon,
              color: color,
              size: 16,
            ),
          ],
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 16.0,
                top: 8.0,
              ),
              child: Text(
                userName,
                style: TextStyle(
                  color: color,
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: 16.0,
            top: 8.0,
          ),
          child: Row(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Text(
                follow,
                style: TextStyle(
                  color: color,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 12.0,
                ),
                child: Text(
                  follower,
                  style: TextStyle(
                    color: color,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }