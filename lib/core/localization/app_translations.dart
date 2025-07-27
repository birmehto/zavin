import 'package:get/get.dart';

import 'en_US.dart';
import 'hi_IN.dart';

class AppTranslations extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {'en_US': enUS, 'hi_IN': hiIN};
}
