import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../constants.dart';
import 'featured_plants.dart';
import 'header_with_searchbox.dart';
import 'recomend_plants.dart';
import 'title_with_more_button.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      //it enable scrolling on small device
      child: Column(
        children: <Widget>[
          HeaderWithSearchBox(size: size),
          TitleWithMoreButton(
            // press: (){},
            title: "Recomended", press: () {},
          ),
          RecomendPlants(),
          TitleWithMoreButton(title: "Featured Plants", press: () {}),
          Featuredplants(),
          SizedBox(
            height: kDefaultPadding,
          ),
        ],
      ),
    );
  }
}
