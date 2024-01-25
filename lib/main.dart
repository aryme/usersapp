import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:usersapp/screens/authentification/login_design_4/signup_4.dart';
import 'package:usersapp/template/values/strings.dart';

void main() async{
  await GetStorage.init();
  
  
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(

     translations: MyTranslations(),
     locale: Get.deviceLocale,
     fallbackLocale: Locale("en", "US"),
     
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: SignUp4(),
    );
  }
}














// void main() {
//   runApp(const MyApp());
// }

// class LanguageController extends GetxController {
//   var locale = const Locale('fr').obs; // Langue par défaut : français

//   void changeLanguage(Locale newLocale) {
//     locale.value = newLocale;
//   }
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return GetMaterialApp(
//       locale: LanguageController().locale.value,
//       localizationsDelegates: const [
//         GlobalMaterialLocalizations.delegate,
//         GlobalWidgetsLocalizations.delegate,
//         GlobalCupertinoLocalizations.delegate,
//       ],
//       supportedLocales: const [
//         Locale('fr'),
//         Locale('ar'),
//       ],
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//         useMaterial3: true,
//       ),
//       debugShowCheckedModeBanner: false,
//       home:  SignUp4(),
//     );
//   }
// }