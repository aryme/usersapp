import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:usersapp/screens/homepages/homepage1.dart';
import 'package:usersapp/screens/homepages/homepage_screens.dart';
import 'package:usersapp/template/values/values.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          padding: EdgeInsets.zero,
          children: [
            Container(
              decoration: const BoxDecoration(
                color: AppColors.linkedInBlue,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(90),
                ),
              ),
              child: Column(
                children: [
                  const SizedBox(height: 70),
                  ListTile(
                    contentPadding: const EdgeInsets.symmetric(horizontal: 30),
                    title: Text(
                      'greeting'.tr,
                      style:
                          Theme.of(context).textTheme.headlineSmall?.copyWith(
                                color: Colors.white,
                              ),
                    ),
                    subtitle: Text(
                      'welcome1'.tr,
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                            color: Colors.white54,
                          ),
                    ),
//                     trailing: DropdownButton(
//   items: [
//     buildDropItem("English", "en"),
//     buildDropItem("Français", "fr"),
//     buildDropItem("Arabe", "ar"),
//   ],
//   onChanged: (value) {
//     Get.updateLocale(Locale(value));
//   },
//   icon: const Icon(
//     Icons.language,
//     color: Colors.white,
//   ),
// ),

                  ),
                  const SizedBox(height: 30),
                ],
              ),
            ),
            const SizedBox(height: 69),

            // Texte centré
             Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'choose_poetry_type'.tr,
                  style: TextStyle(
                    color: Colors.black45,
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'pop_or_classic'.tr,
                  style: TextStyle(
                    color: Colors.black45,
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),

            const SizedBox(height: 90),
            // Conteneur centré qui enveloppe le champ de saisie et le bouton
            Center(
              child: Container(
                width: 300, // Ajuster la largeur selon vos besoins
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.symmetric(vertical: 20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(6),
                  boxShadow: [
                    BoxShadow(
                      offset: const Offset(0, 5),
                      // color: Theme.of(context).primaryColor.withOpacity(.2),
                      color: AppColors.indigo200,
                      spreadRadius: 4,
                      blurRadius: 5,
                    ),
                  ],
                ),
                child: Column(
                  children: [
                     TextField(
                      maxLength: 12, // Limite la longueur à 6 caractères
                      decoration: InputDecoration(
                        labelText: 'enter_poetry_type'.tr,
                        labelStyle: TextStyle(
                          color: AppColors.blackShade1,
                          fontSize: 10, // Couleur du texte du label
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    // Ajouter un bouton
                    ElevatedButton(
                      onPressed: () {
                        Get.to(() => MyWidget());
                      },
                      style: ElevatedButton.styleFrom(
                        primary: AppColors.linkedInBlue,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: Text(
                        'show_result'.tr,
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

DropdownMenuItem buildDropItem(String langue , String value){
  return DropdownMenuItem(
    value: value,
    child: Text(
      langue, 
      style: TextStyle(
    fontSize: 25,
    fontWeight: FontWeight.bold,
  ),));
}






}
