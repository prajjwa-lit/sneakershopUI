import 'package:flutter/material.dart';
import 'package:sneakershop/components/bottom_nav_bar.dart';
import 'package:sneakershop/pages/cart_page.dart';
import 'package:sneakershop/pages/shop_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //selectedindex to control nav bar
  int _selectedindex = 0;

  void navigateBottomBar(int index) {
    setState(() {
      _selectedindex = index;
    });
  }

  //pages
  final List<Widget> _pages = [
    //shop page
    ShopPage(),

    //cart page
    CartPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent,
      bottomNavigationBar: MyBottomNavBar(
        onTabChange: (index) => navigateBottomBar(index),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      drawer: Drawer(
        backgroundColor: Colors.teal.shade900,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(

                child: Image.asset(
              'assets/randomlogo.png',
                    color: Colors.white70,

                    fit: BoxFit.fitHeight
            ),
              margin: EdgeInsets.zero,
            ),
          ],
        ),
      ),
      body: _pages[_selectedindex],
    );
  }
}
