import 'package:flutter/material.dart';
import 'package:usersapp/authentification/values/values.dart';

import 'package:flutter/material.dart';
import 'package:usersapp/authentification/values/values.dart';

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
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: AppColors.red,
              blurRadius: 5,
              offset: Offset(0, 5),
            ),
          ],
        ),
        child: Column(
          children: [
            Image.asset(
              imageAsset,
              height: 80,
              width: 80,
            ),
            SizedBox(height: 8),
            Text(
              title,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
