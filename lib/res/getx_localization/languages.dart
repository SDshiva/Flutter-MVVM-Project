import 'package:get/get.dart';

class Languages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        "en_US": {
          "splash_appbar_name": "Splash Screen",
          "internet_exception":
              "We're unable to connect.\nPlease check your Internet Connection.",
        },
        "bn_BD": {
          "splash_appbar_name": "স্প্লাশ স্ক্রীন",
          "internet_exception":
              "সংযোগ হচ্ছে না!।\n আপনার ইন্টারনেট সংযোগটি যাচাই করুন।"
        },
      };
}
