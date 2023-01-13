import 'package:flutter/material.dart';
import 'package:ps_store_fe/home_screen/components/title_with_custom_underline.dart';

import '../../constants.dart';

class TitleWithMoreButton extends StatefulWidget {
  const TitleWithMoreButton({
    Key? key,
    required this.title,
    required this.press,
  }) : super(key: key);

  final String title;
  final Function press;

  @override
  State<StatefulWidget> createState() => _InputUserState();
}

class _InputUserState extends State<TitleWithMoreButton> {
  final textController = TextEditingController();

  void changeText() {
    setState(() {
      textController.text;
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      margin: EdgeInsets.only(bottom: kDefaultPadding * 1.0),
      height: size.height * 0.12,
      child: Row(
        children: <Widget>[
          TitleWithCustomUnderline(text: "sad"),
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              changeText();
            },
          ),
          Tesasde(),
        ],
      ),
    );
  }
}

class Tesasde extends StatelessWidget {
  const Tesasde({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 123, 106, 106),
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Color.fromARGB(255, 152, 34, 34),
            offset: Offset(0, 2),
            blurRadius: 5.0,
          ),
        ],
      ),
      child: TextField(
        // controller: _searchController,
        decoration: InputDecoration(
            prefixIcon: Icon(Icons.search),
            // suffixIcon: IconButton(
            //   icon: Icon(Icons.clear),
            //   // onPressed: () {
            //   //   _searchController.clear();
            //   // },
            // ),
            border: InputBorder.none,
            hintText: 'Search'),
      ),
    );
  }
}

// class SearchBox extends StatefulWidget {
//   @override
//   _SearchBoxState createState() => _SearchBoxState();
// }

// class _SearchBoxState extends State<SearchBox> {
//   TextEditingController _searchController = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: EdgeInsets.all(10),
//       decoration: BoxDecoration(
//         color: Color.fromARGB(255, 123, 106, 106),
//         borderRadius: BorderRadius.circular(10),
//         boxShadow: [
//           BoxShadow(
//             color: Color.fromARGB(255, 152, 34, 34),
//             offset: Offset(0, 2),
//             blurRadius: 5.0,
//           ),
//         ],
//       ),
//       child: TextField(
//         controller: _searchController,
//         decoration: InputDecoration(
//             prefixIcon: Icon(Icons.search),
//             suffixIcon: IconButton(
//               icon: Icon(Icons.clear),
//               onPressed: () {
//                 _searchController.clear();
//               },
//             ),
//             border: InputBorder.none,
//             hintText: 'Search'),
//       ),
//     );
//   }
// }
