import 'package:ecommerce_app/constant.dart';
import 'package:ecommerce_app/screens/account_screen.dart';
import 'package:ecommerce_app/screens/cart_screen.dart';
import 'package:ecommerce_app/screens/home_screen.dart';
import 'package:ecommerce_app/screens/product_details_screen.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedPage = 0;

  final _pageOption = [
    HomeScreen(),
    ProductDetailsScreen(),
    CartScreen(),
    AccountScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pageOption[_selectedPage],
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          elevation: 5,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: brownTheme,
          unselectedItemColor: darkgreyTheme,
          currentIndex: _selectedPage,
          onTap: (value) {
            _selectedPage = value;
            setState(() {});
          },
          items: [
            BottomNavigationBarItem(
                icon: _selectedPage == 0
                    ? Icon(Icons.home)
                    : Icon(Icons.home_outlined),
                label: ''),
            BottomNavigationBarItem(
                icon: _selectedPage == 1
                    ? Icon(Icons.favorite)
                    : Icon(Icons.favorite_outline),
                label: ''),
            BottomNavigationBarItem(
                icon: _selectedPage == 2
                    ? Icon(Icons.shopping_cart)
                    : Icon(Icons.shopping_cart_outlined),
                label: ''),
            BottomNavigationBarItem(
                icon: _selectedPage == 3
                    ? Icon(Icons.person)
                    : Icon(Icons.person_2_outlined),
                label: ''),
          ]),
    );
  }
}
