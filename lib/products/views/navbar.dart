// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:twitter_clone/products/views/home.dart';
import 'package:twitter_clone/products/views/messages.dart';
import 'package:twitter_clone/products/views/search.dart';
import 'package:twitter_clone/products/views/tabbar.dart';

class NavBarPageView extends StatefulWidget {
  const NavBarPageView({super.key});

  @override
  State<NavBarPageView> createState() => _NavBarPageViewState();
}

class _NavBarPageViewState extends State<NavBarPageView> {
  int _selectedIndex = 0;
  PageController pageController = PageController();

  void onTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    pageController.jumpToPage(index);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: oluşturduğun widgetları fonksiyon olarak parçala.
    // Örnek olarak bottomnavigationbar kısmından bir fonksiyon oluşturabilirsin.
    return Scaffold(
      body: PageView(
        physics: NeverScrollableScrollPhysics(),
        controller: pageController,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          // TODO: Sayfaları bir liste değişkeni oluştur oradan çağır.
          // Örnek : List<Widget> pages = [HomeView(),SearchView()];
          HomePage(),
          SearchPageView(),
          TabBarPageView(),
          MessagesPageView(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        // ignore: prefer_const_literals_to_create_immutables
        items: <BottomNavigationBarItem>[
          // TODO: Model haline getir.
          // Model için NavbarModel class'ı oluştur ve
          // NavbarModel class'ı BottomNavigationBarItem'dan
          // miras alsın. Icon ve label'ı sınıf içinde değişken olarak al.
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_outlined,
              color: Colors.black,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
              color: Colors.black,
            ),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.notifications_none,
              color: Colors.black,
            ),
            label: 'Notifications',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.mail_outline,
              color: Colors.black,
            ),
            label: 'Messages',
          ),
        ],
        currentIndex: _selectedIndex,
        // TODO: Colorları bi sınıfta değişken olarak tanımlayıp kullan.
        // MyColors diye bi sınıf oluştur. Color değişkenlerini burada tanımla.
        // Örnek color değişkeni : static Color black = Colors.black;
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.white,
        onTap: onTapped,
      ),
    );
  }
}
