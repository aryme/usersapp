import 'package:flutter/material.dart';
import 'package:usersapp/authentification/values/values.dart';
class EmailConfirmationPage2 extends StatefulWidget {
  @override
  _EmailConfirmationPage2State createState() => _EmailConfirmationPage2State();
}

class _EmailConfirmationPage2State extends State<EmailConfirmationPage2> {
 


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('hello user'),

        toolbarHeight: 150,
        backgroundColor: Color(AppColors1.blue),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(50),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              SizedBox(height: 30,),
              //if (currentPage == 'email_input')
                Column(
                  children: [
                    //SizedBox(height: 20,),
                    Text('Recherchez le type de Elbet que vous voulez'),
                    SizedBox(height: 20,),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Card(
                        elevation: 7, // Ajoute une ombre à la carte
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.0), // Définit la forme de la carte
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: TextField(
                          //controller: emailController,
                            maxLength: 6, // Limite la longueur à 6 caractères
                            decoration: InputDecoration(labelText: 'Entrez votre e-mail ',

                              labelStyle: TextStyle(
                                color: Colors.indigo, // Couleur du texte du label
                              ),
                            ),

                          ),

                        ),

                      ),

                    ),
                    SizedBox(height: 10),
        ElevatedButton(
          onPressed: (){},
          child: Text('Vérifier l\'e-mail'),
          style: ElevatedButton.styleFrom(
            primary: Colors.indigo, // Couleur de fond du bouton
            textStyle: TextStyle(
              color: Colors.white, // Couleur du texte du bouton
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0), // BorderRadius circulaire
            ),

          ),
        ),
                  ],
                ),
                 
             
                
            ],
          ),
        ),
      ),
    );
  }}




  
class AppColors1 {
  static const int blue = 0xFF0000FF; // Replace with the actual color value
}