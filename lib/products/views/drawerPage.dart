// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:twitter_clone/products/companents/drawers/drawerBottom.dart';
import 'package:twitter_clone/products/companents/drawers/drawerMenu.dart';
import 'package:twitter_clone/products/companents/drawers/headerDrawer.dart';



class DrawerPageView extends StatelessWidget {
  const DrawerPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.white,
        child: ListView(
          children: [
            drawerHeader(
              name: 'Alperen',
              userName: '@alperenakrslan',
              icon: Icons.lock,
              follow: '821 Following',
              follower: '21345 Followers',
              trailIcon: Icons.more_horiz,
              image: AssetImage('assets/images/ben_2.png'),
              secondImage: AssetImage('assets/images/ılgın.png'),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.002,
            ),
            drawerMenuItem(
              text: 'Profile',
              icon: Icons.person,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.0001,
            ),
            drawerMenuItem(
              text: 'Topics',
              icon: Icons.insert_comment_outlined,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.002,
            ),
            drawerMenuItem(
              text: 'Bookmarks',
              icon: Icons.bookmark_border,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.002,
            ),
            drawerMenuItem(
              text: 'Lists',
              icon: Icons.list_alt,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.002,
            ),
            drawerMenuItem(
              text: 'Twitter Circle',
              icon: Icons.person,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.002,
            ),
            drawerMenuItem(
              text: 'Follower requests',
              icon: Icons.person,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.002,
            ),
            Divider(
              color: Colors.black38,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.002,
            ),
            drawerBottomItems(
              text: 'Creator Studio',
              icon: Icons.keyboard_arrow_down,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.002,
            ),
            drawerBottomItems(
              text: 'Professional Tools',
              icon: Icons.keyboard_arrow_down,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.002,
            ),
            drawerBottomItems(
              text: 'Settings and Support',
              icon: Icons.keyboard_arrow_down,
            ),
          ],
        ),
      ),
    );
  }
}