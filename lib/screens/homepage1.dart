
import 'package:flutter/material.dart';
import 'package:usersapp/authentification/values/values.dart';
import 'package:usersapp/widgets/category_card.dart';



class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return  Scaffold(
      // bottomNavigationBar: BottomNavBar(),
       body: Stack(
        children: <Widget>[
          Container(
            height: size.height * .45 ,
            decoration: BoxDecoration(
               color: AppColors.linkedInBlue,
              image: DecorationImage(
                alignment: Alignment.centerLeft,
                image: AssetImage("assest/images/undraw_pilates_gpdb.png"),
              ),
            ),
          ),
          SafeArea(child: Padding(
              padding:  EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      alignment: Alignment.center,
                      height: 52,
                      width: 52,
                      decoration: BoxDecoration(
                        color: Color(0xFFF2BEA1),
                        shape: BoxShape.circle,
                      ),
                      child: Icon(Icons.menu),
                    ),
                  ),
                  Text(
                    "Good Morning \nShishir",
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 24,
                    ),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      hintText: "Rechercher",
                      hintStyle: TextStyle(color: Colors.black),
                      prefixIcon: Icon(Icons.search),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 40,),
                  Expanded(child:  GridView.count(
                    crossAxisCount: 2,
                      childAspectRatio: .85,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20,
                      children: <Widget>[
                        SimpleCard(
  title: "Diet ",
  imageAsset: "assest/images/am.jpg",
  press: () {
    // Action à exécuter lorsque la carte est pressée
  },
),

                       
                      ],
                      
                      
                      ))

                ],
              ),
          ))
        ],
       ),
    );
  }
}