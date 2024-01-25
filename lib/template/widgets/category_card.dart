import 'package:flutter/material.dart';
import 'package:usersapp/template/values/values.dart';

class SimpleCard extends StatelessWidget {
  final String title;
  final String imageAsset;
  final VoidCallback press;

  const SimpleCard({
    required this.title,
    required this.imageAsset,
    required this.press,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        decoration: BoxDecoration(
  color: AppColors.primaryColor,
  borderRadius: BorderRadius.circular(20),  // Augmenté le rayon de bordure pour un aspect plus arrondi
  boxShadow: const [
    BoxShadow(
      color: AppColors.black,
      blurRadius: 10,  // Augmenté le rayon de flou pour un effet d'ombre plus prononcé
      offset: Offset(0, 8),  // Augmenté la distance de l'ombre par rapport à la boîte
    ),
  ],
  // Ajouté un dégradé pour un aspect plus riche
  gradient: LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [AppColors.primaryColor, AppColors.secondaryColor],
  ),
),

        // ignore: sort_child_properties_last
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              imageAsset,
              height: 60,
              width: 90,
            ),
            SizedBox(height: 8),
            Text(
              title,
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.bold,
                color: Colors.grey[800],
              ),
            ),
            const SizedBox(height: 8),
            const Align(
              alignment: Alignment.bottomRight,
              child: Icon(
                Icons.create_outlined,
                color: AppColors.black, // Couleur de l'icône verte
              ),
            ),
          ],
        ),
        padding: EdgeInsets.all(16),
        margin: EdgeInsets.all(8),
      ),
    );
  }
}
