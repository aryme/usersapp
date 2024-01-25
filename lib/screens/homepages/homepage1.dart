import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:usersapp/screens/elementsListe/betelarsane.dart';
import 'package:usersapp/template/values/values.dart';
import 'package:usersapp/template/widgets/category_card.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      // bottomNavigationBar: BottomNavBar(),
      body: Stack(
        children: <Widget>[
          Container(
            height: size.height * .50,
            decoration: BoxDecoration(
              color: AppColors.white,
              border: Border.all(
                color: AppColors.grey, // Couleur de la bordure
                width:
                    1.0, // Largeur de la bordure (ajustez selon vos préférences)
              ),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 22),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Align(
                    alignment: Alignment.topLeft,
                    child: InkWell(
                      onTap: () {
                        // Fonction à exécuter lorsque le conteneur est pressé
                        // Par exemple, naviguer vers une autre page ou effectuer une action
                      },
                      child: Container(
                        alignment: Alignment.center,
                        height: 52,
                        width: 52,
                        decoration: BoxDecoration(
                          color: AppColors.linkedInBlue,
                          shape: BoxShape.circle,
                        ),
                        child: Icon(Icons.menu),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Text(
                      'message_1'.tr,
                      style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 24,
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Row(
                          children: [
                            SizedBox(
                              width: size.width *
                                  0.5, // Ajustez la largeur du champ de recherche
                              child: InkWell(
                                onTap: () {},
                                child: Container(
                                  margin: EdgeInsets.symmetric(vertical: 30),
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 30, vertical: 5),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(29.5),
                                    border: Border.all(
                                        color: Colors
                                            .black), // Ajoutez une bordure noire
                                  ),
                                  child: const Row(
                                    children: [
                                      Icon(Icons.search,
                                          color: Colors
                                              .grey), // Ajoutez une icône de recherche
                                      SizedBox(
                                          width:
                                              10), // Ajoutez un espace entre l'icône et le champ de recherche
                                      Expanded(
                                        child: TextField(
                                          decoration: InputDecoration(
                                            hintText: "Search",
                                            border: InputBorder.none,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width:
                                  5, 
                            ),
                            Container(
                              width: size.width * 0.4 -
                                  10, // Ajustez la largeur de l'image
                              height: 150, // Ajustez la hauteur de l'image
                              decoration: BoxDecoration(
                                // Forme rectangulaire
                                borderRadius: BorderRadius.circular(8.0),
                                image: DecorationImage(
                                  image: AssetImage("assest/images/1t.png"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Expanded(
                    child: GridView.count(
                      crossAxisCount: 2,
                      childAspectRatio: .85,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20,
                      children: <Widget>[
                        SimpleCard(
                          title: "Elbet el-arsan",
                          imageAsset: "assest/images/12.png",
                          press: () {
                            // Action à exécuter lorsque la carte est pressée
                            Get.to(() => ElbetElArsanPage());
                          },
                        ),
                        // SimpleCard(
                        //   title: "Elbet el-arsan",
                        //   imageAsset: "assest/images/12.png",
                        //   press: () {
                        //     // Action à exécuter lorsque la carte est pressée
                        //     print("Card pressed!");
                        //   },
                        // ),
                        SimpleCard(
                          title: "Elbet al-usbuae",
                          imageAsset: "assest/images/1212.png",
                          press: () {
                            // Action à exécuter lorsque la carte est pressée
                          },
                        ),
                        SimpleCard(
                          title: "ElBet al-Mardi",
                          imageAsset: "assest/images/121.jpg",
                          press: () {
                            // Action à exécuter lorsque la carte est pressée
                          },
                        ),
                        SimpleCard(
                          title: "ElBet al-Ḥoṣa ",
                          imageAsset: "assest/images/ww.jpg",
                          press: () {
                            // Action à exécuter lorsque la carte est pressée
                          },
                        ),
                        SimpleCard(
                          title: "Elbet al-itmaari ",
                          imageAsset: "assest/images/ll.jpg",
                          press: () {
                            // Action à exécuter lorsque la carte est pressée
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
