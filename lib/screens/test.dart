// import 'package:flutter/material.dart';

// class ElbetElArsanPage extends StatefulWidget {
//   @override
//   _ElbetElArsanPageState createState() => _ElbetElArsanPageState();
// }

// class _ElbetElArsanPageState extends State<ElbetElArsanPage> {
//   final TextEditingController nomAriseController = TextEditingController();
//   final TextEditingController nomBrideController = TextEditingController();
//   final TextEditingController motsClesController = TextEditingController();
//   final TextEditingController choixLangueController = TextEditingController();
//   final TextEditingController nombreKifanOuAbianController =
//       TextEditingController();
//   final TextEditingController texteCommandeController = TextEditingController();
//   final TextEditingController changementUniqueParKafController =
//       TextEditingController();
//   final TextEditingController changementPrixCompensationController =
//       TextEditingController();
//   final TextEditingController delaiAnnonceChangementController =
//       TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: <Widget>[
//           Padding(
//             padding: EdgeInsets.all(16.0),
//             child: SingleChildScrollView(
//               child: Center(
//                 child: Container(
//                   padding: EdgeInsets.all(16.0),
//                   decoration: BoxDecoration(
//                     color: Colors.white,
//                     borderRadius: BorderRadius.circular(10.0),
//                     boxShadow: [
//                       BoxShadow(
//                         color: Colors.grey.withOpacity(0.5),
//                         spreadRadius: 3,
//                         blurRadius: 5,
//                         offset: Offset(0, 3),
//                       ),
//                     ],
//                   ),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       TextFormField(
//                         controller: nomAriseController,
//                         decoration: InputDecoration(
//                           labelText: 'Nom Arise',
//                           border: OutlineInputBorder(),
//                         ),
//                       ),
//                       SizedBox(height: 16.0),
//                       TextFormField(
//                         controller: nomBrideController,
//                         decoration: InputDecoration(
//                           labelText: 'Nom Arouse',
//                           border: OutlineInputBorder(),
//                         ),
//                       ),
//                       SizedBox(height: 16.0),
//                       TextFormField(
//                         controller: motsClesController,
//                         decoration: InputDecoration(
//                           labelText: 'Mots Clés',
//                           border: OutlineInputBorder(),
//                         ),
//                       ),
//                       SizedBox(height: 16.0),
//                       TextFormField(
//                         controller: nombreKifanOuAbianController,
//                         decoration: InputDecoration(
//                           labelText: 'Nombre Kifan ou Abian',
//                           border: OutlineInputBorder(),
//                         ),
//                         keyboardType: TextInputType.number,
//                       ),
//                       SizedBox(height: 16.0),
//                       ElevatedButton(
//                         onPressed: () {
//                           // Traitez les données ici ou envoyez-les à votre backend
//                           print(nomAriseController.text);
//                           // ... traitez les autres champs de la même manière

//                           // Afficher la boîte de dialogue pour le coût et les options
//                           //_showCostDialog();
//                         },
//                         child: Container(
//                           padding: EdgeInsets.symmetric(vertical: 15.0),
//                           alignment: Alignment.center,
//                           child: Text(
//                             'Voir le cous',
//                             style: TextStyle(
//                               color: Colors.white,
//                               fontSize: 18.0,
//                               fontWeight: FontWeight.bold,
//                             ),
//                           ),
//                         ),
//                         style: ElevatedButton.styleFrom(
//                           primary: Colors.blue, // couleur du bouton
//                           shape: RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(8.0),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:usersapp/template/values/values.dart';

class ElbetElArsanPage extends StatefulWidget {
  @override
  _ElbetElArsanPageState createState() => _ElbetElArsanPageState();
}

class _ElbetElArsanPageState extends State<ElbetElArsanPage> {
  final TextEditingController nomAriseController = TextEditingController();
  final TextEditingController nomBrideController = TextEditingController();
  final TextEditingController motsClesController = TextEditingController();
  final TextEditingController nombreKifanOuAbianController =
      TextEditingController();
  final TextEditingController texteCommandeController = TextEditingController();
  final TextEditingController changementUniqueParKafController =
      TextEditingController();
  final TextEditingController changementPrixCompensationController =
      TextEditingController();
  final TextEditingController delaiAnnonceChangementController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: size.height * .30,
            decoration: BoxDecoration(
              color: AppColors.white,
              border: Border.all(
                color: AppColors.grey,
                width: 1.0,
              ),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 22),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: [
                      Expanded(
                        child: Row(
                          children: [
                            SizedBox(
                              width: size.width * 0.5,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Elbet el-arsan",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w900,
                                      fontSize: 24,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 4,
                                  ),
                                  Container(
                                    width: size.width * 0.4 - 8,
                                    height: 140,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8.0),
                                      image: DecorationImage(
                                        image:
                                            AssetImage("assest/images/12.png"),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Expanded(
                              child: Column(
                                children: [
                                  TextFormField(
                                    controller: nomAriseController,
                                    decoration: InputDecoration(
                                      labelText: 'Nom Arise',
                                      border: OutlineInputBorder(),
                                    ),
                                  ),
                                  SizedBox(height: 16.0),
                                  TextFormField(
                                    controller: nomBrideController,
                                    decoration: InputDecoration(
                                      labelText: 'Nom Arouse',
                                      border: OutlineInputBorder(),
                                    ),
                                  ),
                                  SizedBox(height: 16.0),
                                  TextFormField(
                                    controller: motsClesController,
                                    decoration: InputDecoration(
                                      labelText: 'Mots Clés',
                                      border: OutlineInputBorder(),
                                    ),
                                  ),
                                  SizedBox(height: 16.0),
                                  TextFormField(
                                    controller: nombreKifanOuAbianController,
                                    decoration: InputDecoration(
                                      labelText: 'Nombre Kifan ou Abian',
                                      border: OutlineInputBorder(),
                                    ),
                                    keyboardType: TextInputType.number,
                                  ),
                                  SizedBox(height: 16.0),
                                  ElevatedButton(
                                    onPressed: () {
                                      // Traitez les données ici ou envoyez-les à votre backend
                                      print(nomAriseController.text);
                                      // ... traitez les autres champs de la même manière

                                      // Afficher la boîte de dialogue pour le coût et les options
                                      //_showCostDialog();
                                    },
                                    child: Container(
                                      padding:
                                          EdgeInsets.symmetric(vertical: 15.0),
                                      alignment: Alignment.center,
                                      child: Text(
                                        'Voir le cous',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 18.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    style: ElevatedButton.styleFrom(
                                      primary: Colors.blue,
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
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
