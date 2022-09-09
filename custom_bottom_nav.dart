import 'package:custom_line_indicator_bottom_navbar/custom_line_indicator_bottom_navbar.dart';
import 'package:flutter/material.dart';
import 'package:playstore_ui/ASHAL%20PROJECT/details.dart';

import 'ASHAL PROJECT/account.dart';
import 'ASHAL PROJECT/checkout.dart';

class CustomNavBar extends StatefulWidget {
  const CustomNavBar({Key? key}) : super(key: key);

  @override
  State<CustomNavBar> createState() => _CustomNavBarState();
}

class _CustomNavBarState extends State<CustomNavBar> {
  int _selectedIndex = 0;
  final List<Widget> _widgetOptions = [
    const Text('Home'),
    const DetailScreen(),
    const Text('Favourite'),
    const MyAccountScreen(),
    const CheckOutScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: CustomLineIndicatorBottomNavbar(
        selectedColor: const Color(0XFFF1B236),
        unSelectedColor: Colors.black54,
        backgroundColor: Colors.white,
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        enableLineIndicator: true,
        lineIndicatorWidth: 3,
        indicatorType: IndicatorType.Top,
        customBottomBarItems: [
          CustomBottomBarItems(
            label: 'Home',
            icon: Icons.home,
          ),
          CustomBottomBarItems(label: 'Categories', icon: Icons.grid_view),
          CustomBottomBarItems(
            label: 'Favourite',
            icon: Icons.favorite_border,
          ),
          CustomBottomBarItems(
            label: 'My Account',
            icon: Icons.person,
          ),
          CustomBottomBarItems(label: 'Cart', icon: Icons.shopping_cart),
        ],
      ),
    );
  }
}
