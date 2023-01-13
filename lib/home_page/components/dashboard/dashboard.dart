import 'package:flutter/material.dart';
import 'package:ps_store_fe/home_page/components/dashboard/header_with_searchbox.dart';

import '../../../home_screen/components/my_bottom_navbar.dart';
import '../../../home_screen/components/title_with_more_button.dart';

// class Home extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;
//     return Scaffold(
//       body: HeaderWithSearchBox(size: size),
//       // bottomNavigationBar: MyBottomNavBar(),
//     );
//   }
// }

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: TitleWithMoreButton(
        // press: (){},
        title: "Recnded", press: () {},
      ),
      //it enable scrolling on small device
      // child: Column(
      //   children: <Widget>[
      //     HeaderWithSearchBox(size: size),

      //     TitleWithMoreButton(
      //       // press: (){},
      //       title: "Recnded", press: () {},
      //     ),
      //     // RecomendPlants(),
      //     // TitleWithMoreButton(title: "Featured Plants", press: () {}),
      //     // Featuredplants(),
      //     // SizedBox(
      //     //   height: kDefaultPadding,
      //     // ),
      //   ],
      // ),
    );
  }
}
