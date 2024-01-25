import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:usersapp/utils/local_storage/local_storege.dart';

class AppLanguage extends GetxController {
  var appLocale = 'en';

  @override
  void onInit() async {
    // TODO: implement onInit
    super.onInit();
    LocalStorage localStorage = LocalStorage();

    appLocale = await localStorage.languageSelected ?? 'en';
    update();
    Get.updateLocale(Locale(appLocale));
  }

  // void changeLanguage(String type) async {
  //   LocalStorage localStorage = LocalStorage();

  //   if (appLocale == type) {
  //     return;
  //   }
  //   if (type == 'en') {
  //     appLocale = 'en';
  //     localStorage.saveLanguageToDisk('en');
  //   } else {
  //     appLocale = 'ar';
  //     localStorage.saveLanguageToDisk('qr');
  //   }
  //   update();
  // }


  void changeLanguage(String type) async {
  LocalStorage localStorage = LocalStorage();

  if (appLocale == type) {
    return;
  }

  if (type == 'en') {
    appLocale = 'en';
    localStorage.saveLanguageToDisk('en');
  } else if (type == 'ar') {
    appLocale = 'ar';
    localStorage.saveLanguageToDisk('ar');
  } else if (type == 'fr') {
    appLocale = 'fr';
    localStorage.saveLanguageToDisk('fr');
  }

  update();
}

}