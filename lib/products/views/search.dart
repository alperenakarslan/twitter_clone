// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:twitter_clone/products/views/drawerPage.dart';

class SearchPageView extends StatelessWidget {
  const SearchPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        title: Center(
          child: TextField(
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.grey.shade300,
              hintText: 'Search Twitter',
              hintStyle: TextStyle(
                color: Colors.grey.shade600,
              ),
              prefixIcon: Icon(Icons.search),
              prefixIconColor: Colors.grey.shade600,
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  width: 3,
                  color: Colors.transparent,
                ),
                borderRadius: BorderRadius.circular(50),
              ),
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.settings),
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: ListView.builder(
        itemBuilder: ((context, index) {
          return ListTile(
            trailing: Icon(Icons.more_horiz),
            title: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Text("Cristiano Ronaldo"),
                  Text('2.234 tweets'),
                ],
              ),
            ),
          );
        }),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.add,
          size: 36,
        ),
      ),
    );
  }
}
