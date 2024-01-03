import 'package:coffee_app_provider/components/bottom_nav_bar.dart';
import 'package:coffee_app_provider/const.dart';
import 'package:coffee_app_provider/pages/cart_page.dart';
import 'package:coffee_app_provider/pages/shop_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // navigate bottomm bar
  int _selectIndex = 0;
  void navigateBottomBar(int index) {
    setState(() {
      _selectIndex = index;
    });
  }

  // pages
  final List<Widget> _pages = [
    // shop page
    ShopPage(),

    // cart page
    CartPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      bottomNavigationBar: MyBottomNavBar(
        onTabChange: (index) => navigateBottomBar(index),
      ),
      body: _pages[_selectIndex],
    );
  }
}
