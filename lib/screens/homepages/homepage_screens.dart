import 'package:flutter/material.dart';
import 'package:usersapp/screens/authentification/login_design_4/profile.dart';
import 'package:usersapp/screens/homepages/homepage.dart';
import 'package:usersapp/screens/visualisees/visualiser1.dart';
import 'package:usersapp/template/values/values.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: Container(
          color: AppColors.white, // Couleur de fond du TabBarView
          child: const TabBarView(
            children: [
              MyHomePage(), // Premier onglet avec le contenu de MyWidget
              AvencementVoir(),
              ProflePage(), // Deuxième onglet avec la page de profil
            ],
          ),
        ),
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            color: AppColors
                .primaryColor, // Couleur de fond de la barre de navigation
            boxShadow: [
              BoxShadow(
                color: AppColors.black.withOpacity(0.2),
                spreadRadius: 2,
                blurRadius: 4,
                offset: Offset(0, 1),
              ),
            ],
          ),
          child: const TabBar(
            labelColor: AppColors.linkedInBlue, // Couleur du texte de l'onglet sélectionné
            unselectedLabelColor: AppColors
                .black, // Couleur du texte des onglets non sélectionnés
            tabs: [
              Tab(
                icon: Icon(
                  Icons.home,
                  size: 30,
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.assessment_outlined,
                  size: 30,
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.person,
                  size: 30,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
