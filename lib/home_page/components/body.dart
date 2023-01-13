import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ps_store_fe/home_page/components/account/account.dart';
import 'package:ps_store_fe/home_page/components/dashboard/header_with_searchbox.dart';
import 'package:ps_store_fe/home_page/components/dashboard/dashboard.dart';

import '../../../constants.dart';
import '../home_page.dart';
import 'service/service.dart';

class Body extends State<HomePage> {
  int _selectedIndex = 0;
  final List<Widget> _widgetOptions = <Widget>[
    Dashboard(),
    Service(),
    Account(),
    Service(),
    Account(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _onItemTapped,
        currentIndex: _selectedIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: _selectedIndex == 0
                  ? Color.fromRGBO(59, 88, 132, 1)
                  : Colors.grey,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite,
              color: _selectedIndex == 1
                  ? Color.fromRGBO(59, 88, 132, 1)
                  : Colors.grey,
            ),
            label: 'Favorite',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.support_agent,
              color: _selectedIndex == 2
                  ? Color.fromRGBO(59, 88, 132, 1)
                  : Colors.grey,
            ),
            label: 'Service',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_cart,
              color: _selectedIndex == 3
                  ? Color.fromRGBO(59, 88, 132, 1)
                  : Colors.grey,
            ),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: _selectedIndex == 4
                  ? Color.fromRGBO(59, 88, 132, 1)
                  : Colors.grey,
            ),
            label: 'Account',
          ),
        ],
      ),
    );
  }
}
