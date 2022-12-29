// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:twitter_clone/products/views/drawerPage.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerPageView(),
      appBar: AppBar(
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
        elevation: 0,
        backgroundColor: Colors.white,
        title: Image.asset(
          'assets/images/twitterlogo.png',
          height: 40,
          width: 40,
        ),
        // ignore: prefer_const_literals_to_create_immutables
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Icon(
              Icons.auto_awesome_outlined,
              color: Colors.black,
            ),
          ),
        ],
        // title: Row(
        //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //   children: [
        //     // IconButton(
        //     //   onPressed: (() {
        //     //     Scaffold.of(context).openDrawer();
        //     //   }),
        //     //   icon: CircleAvatar(
        //     //     backgroundImage: AssetImage("assets/images/ben_2.png"),
        //     //   ),
        //     // ),
        //     Image.asset(
        //       "assets/images/twitterlogo.png",
        //       height: 40,
        //       width: 40,
        //     ),
        //     const Icon(
        //       Icons.auto_awesome_outlined,
        //       color: Colors.black,
        //     ),
        //   ],
        // ),
      ),
      body: ListView.builder(
        itemBuilder: ((context, index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage("assets/images/ben.png"),
            ),
            title: Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Row(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Text(
                    'Alperen Akarslan',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 4),
                    child: Text(
                      '@alperenakrslan',
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 40),
                    child: Icon(Icons.more_horiz),
                  ),
                ],
              ),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.only(top: 8, bottom: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Herkese merhaba',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 6, right: 100),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        Row(
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            Icon(Icons.mode_comment_outlined),
                            Padding(
                              padding: const EdgeInsets.only(left: 4.0),
                              child: Text('67'),
                            ),
                          ],
                        ),
                        Row(
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            Icon(Icons.sync_outlined),
                            Padding(
                              padding: const EdgeInsets.only(left: 4.0),
                              child: Text('879'),
                            ),
                          ],
                        ),
                        Row(
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            Icon(Icons.favorite_border_outlined),
                            Padding(
                              padding: const EdgeInsets.only(left: 4.0),
                              child: Text('3892'),
                            ),
                          ],
                        ),
                        Icon(Icons.file_upload_outlined),
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        }),
      ),
    );
  }
}
