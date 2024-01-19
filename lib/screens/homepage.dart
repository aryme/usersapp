import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:usersapp/authentification/values/values.dart';
import 'package:usersapp/screens/homepage1.dart';


class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          Container(
            decoration: const BoxDecoration(
              color: AppColors.linkedInBlue,
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(50),
              ),
            ),
            child: Column(
              children: [
                const SizedBox(height: 50),
                ListTile(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 30),
                  title: Text(
                    'Bonjour User!',
                    style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                          color: Colors.white,
                        ),
                  ),
                  subtitle: Text(
                    'Bienvenue dans ELbet',
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          color: Colors.white54,
                        ),
                  ),
                  trailing: IconButton(
                    icon: Icon(
                      Icons.language,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      // Logique pour changer la langue ici
                    },
                  ),
                ),
                const SizedBox(height: 30),
              ],
            ),
          ),
          const SizedBox(height: 69),

          // Texte centré
         const Column(
  mainAxisAlignment: MainAxisAlignment.center,
  crossAxisAlignment: CrossAxisAlignment.center,
  children: [
    Text(
      'Choisissez le type de poésie que vous préférez,',
      style: TextStyle(
        color: Colors.black,
        fontSize: 17,
        fontWeight: FontWeight.bold,
      ),
    ),
    Text(
      'populaire ou classique?',
      style: TextStyle(
        color: Colors.black,
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
                  const TextField(
                    maxLength: 12, // Limite la longueur à 6 caractères
                    decoration: InputDecoration(
                      labelText: 'Entrez le type de poésie',
                      labelStyle: TextStyle(
                        color: Colors.black, // Couleur du texte du label
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
                      'Afficher le Resultat',
                      style: TextStyle(color: Colors.white),
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
