// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:twitter_clone/products/views/allNotifications.dart';
import 'package:twitter_clone/products/views/drawerPage.dart';
import 'package:twitter_clone/products/views/mentionsNotifications.dart';

class TabBarPageView extends StatelessWidget {
  const TabBarPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        drawer: DrawerPageView(),
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: Builder(
            builder: ((context) {
              return IconButton(
                onPressed: (() {
                  Scaffold.of(context).openDrawer();
                }),
                icon: CircleAvatar(
                  backgroundImage: AssetImage("assets/images/ben_2.png"),
                ),
              );
            }),
          ),
          title: const Text(
            'Notifications',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.settings,
                ),
                color: Colors.black,
              ),
            ),
          ],
          bottom: TabBar(
            // ignore: prefer_const_literals_to_create_immutables
            tabs: [
              Tab(
                child: Text(
                  'All',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Tab(
                child: Text(
                  'Mentions',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            AllNotificationsPageView(),
            MentionsNotificationsViewPage(),
          ],
        ),
      ),
    );
  }
}
