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

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Stack(
            children: <Widget>[
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
                                  child: Text(
                                    "Elbet el-arsan",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w900,
                                      fontSize: 24,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 4,
                                ),
                                Container(
                                  width: size.width * 0.4 - 8,
                                  height: 10,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage("assest/images/12.png"),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 40,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 160,
                      ),
                      Container(
                        color: Colors.white,
                        padding: EdgeInsets.all(16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
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
                            SizedBox(height: 16),
                            TextFormField(
                              controller: nombreKifanOuAbianController,
                              decoration: InputDecoration(
                                labelText: 'Nombre ',
                                border: OutlineInputBorder(),
                              ),
                              keyboardType: TextInputType.number,
                            ),
                            SizedBox(height: 16),
                            ElevatedButton(
                              onPressed: () {
                                showDialog(
                                  context: context,
                                  builder: (context) => CostPage(
                                    selectedLanguage: 'Français', // French text
                                    onConfirm: (int quantity) {
                                      print('Confirmed Quantity: $quantity');
                                    },
                                  ),
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                primary: AppColors.violetShade200,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                              ),
                              child: Container(
                                padding: EdgeInsets.symmetric(vertical: 15.0),
                                alignment: Alignment.center,
                                child: const Text(
                                  'Voir le coût',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
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
        ),
      ),
    );
  }
}

class CostPage extends StatefulWidget {
  final String selectedLanguage;
  final ValueChanged<int> onConfirm;

  CostPage({required this.selectedLanguage, required this.onConfirm});

  @override
  _CostPageState createState() => _CostPageState();
}

class _CostPageState extends State<CostPage> {
  int quantity = 1;
  bool acceptConditions = false;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Voir le coût'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Sélectionnez la quantité de ${widget.selectedLanguage}:',
            style: TextStyle(fontSize: 18),
          ),
          SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                icon: Icon(Icons.remove),
                onPressed: () {
                  if (quantity > 1) {
                    setState(() {
                      quantity--;
                    });
                  }
                },
              ),
              Text(
                quantity.toString(),
                style: TextStyle(fontSize: 18),
              ),
              IconButton(
                icon: Icon(Icons.add),
                onPressed: () {
                  setState(() {
                    quantity++;
                  });
                },
              ),
            ],
          ),
          SizedBox(height: 16),
          CheckboxListTile(
            title: Text('J\'accepte les conditions'),
            value: acceptConditions,
            onChanged: (value) {
              setState(() {
                acceptConditions = value!;
              });
            },
          ),
          SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {
              if (acceptConditions) {
                widget.onConfirm(quantity);
                Navigator.pop(context);
              } else {
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: const Text('Erreur',
                          style: TextStyle(
                              color: Colors
                                  .black)), // Set title text color to white
                      content: const Text(
                        'Veuillez accepter les conditions.',
                        style: TextStyle(
                            color: Colors.black), // Set text color to white
                      ),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text('OK',
                              style: TextStyle(
                                  color: Colors
                                      .black)), // Set button text color to white
                        ),
                      ],
                    );
                  },
                );
              }
            },
            child: const Text(
              'Commander',
              style: TextStyle(
                  color: Colors.white), // Set button text color to white
            ),
            style: ElevatedButton.styleFrom(
              primary: AppColors.violetShade200,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
