// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:twitter_clone/products/views/drawerPage.dart';

class AllNotificationsPageView extends StatelessWidget {
  const AllNotificationsPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerPageView(),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(
              Icons.favorite,
              color: Colors.red.shade700,
            ),
            title: Padding(
              padding: const EdgeInsets.only(top: 4.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage(
                      'assets/images/ılgın.png',
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 4.0),
                    child: Text('Ilgın liked your tweet'),
                  ),
                ],
              ),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.only(top: 4.0),
              child: Text(
                "I'm writing Flutter :)",
              ),
            ),
          );
        },
      ),
    );
  }
}
