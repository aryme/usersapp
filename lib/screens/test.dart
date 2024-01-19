// import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:usersapp/widgets/bottom_nav_bar.dart';
// import 'package:usersapp/widgets/category_card.dart';

// class HomeScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     var size = MediaQuery.of(context).size;

    

// return Scaffold(
//       bottomNavigationBar: BottomNavBar(),
//       body: Stack(
//         children: <Widget>[
//           Container(
//             height: size.height * .45,
//             decoration: BoxDecoration(
//               color: Color(0xFFF5CEB8),
//               image: DecorationImage(
//                 alignment: Alignment.centerLeft,
//                 image: AssetImage("assest/images/undraw_pilates_gpdb.png"),
//               ),
//             ),
//           ),
//           SafeArea(
//             child: Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 20),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: <Widget>[
//                   Align(
//                     alignment: Alignment.topRight,
//                     child: Container(
//                       alignment: Alignment.center,
//                       height: 52,
//                       width: 52,
//                       decoration: BoxDecoration(
//                         color: Color(0xFFF2BEA1),
//                         shape: BoxShape.circle,
//                       ),
//                       child: SvgPicture.asset("assest/icons/menu.svg"),
//                     ),
//                   ),
//                   Text(
//                     "Good Morning \nShishir",
//                     style: TextStyle(
//                       fontWeight: FontWeight.w900,
//                       fontSize: 24,
//                     ),
//                   ),
//                   // Utilisation d'un champ de recherche standard pour remplacer SearchBar
//                   TextField(
//                     decoration: InputDecoration(
//                       hintText: "Rechercher",
//                       hintStyle: TextStyle(color: Colors.black),
//                       prefixIcon: Icon(Icons.search),
//                       border: OutlineInputBorder(
//                         borderRadius: BorderRadius.all(
//                           Radius.circular(10),
//                         ),
//                       ),
//                     ),
//                   ),
//                   Expanded(
//                     child: GridView.count(
//                       crossAxisCount: 2,
//                       childAspectRatio: .85,
//                       crossAxisSpacing: 20,
//                       mainAxisSpacing: 20,
//                       children: <Widget>[
//                         CategoryCard(
//                           title: "Diet Recommendation",
//                           svgSrc: "assest/icons/Hamburger.svg",
//                           press: () {},
//                         ),
//                         CategoryCard(
//                           title: "Kegel Exercises",
//                           svgSrc: "assest/icons/Excrecises.svg",
//                           press: () {},
//                         ),
//                         CategoryCard(
//                           title: "Meditation",
//                           svgSrc: "assest/icons/Meditation.svg",
//                           press: () {},
//                         ),
//                         CategoryCard(
//                           title: "Yoga",
//                           svgSrc: "assest/icons/yoga.svg",
//                           press: () {},
//                         ),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }


