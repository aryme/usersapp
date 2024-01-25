import 'package:get_storage/get_storage.dart';

class LocalStorage {

  /// Write
  void saveLanguageToDisk (String langusage)async{
    await GetStorage().write('lang', langusage);
  }

  /// Read
  Future<String> get languageSelected async {
    // Use 'en' as the default language if 'lang' key is not present
    return (await GetStorage().read('lang')) ?? 'en';
  }
}