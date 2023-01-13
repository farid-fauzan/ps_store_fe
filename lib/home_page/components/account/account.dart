import 'package:flutter/material.dart';
import 'package:ps_store_fe/home_page/components/dashboard/header_with_searchbox.dart';

class Account extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      // backgroundColor: Colors.amber,
      body: HeaderWithSearchBox(size: size),
    );
  }
}
