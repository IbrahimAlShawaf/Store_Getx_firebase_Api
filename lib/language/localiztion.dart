import 'package:get/get.dart';
import 'package:storefinal_app/language/ar.dart';
import 'package:storefinal_app/language/en.dart';
import 'package:storefinal_app/utils/my_string.dart';

class LocaliztionApp extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        ene: en,
        ara: ar,
      };
}
