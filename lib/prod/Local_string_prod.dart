import 'package:get/get_navigation/src/root/internacionalization.dart';

class LocaleStringProd extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
    'en_US': {
      'hello': 'Hello World',
      'hint_text': 'You have pushed the button this many times',
      'change_language': 'Choose Your Language',
      'increment': 'Increment'
    },
    'hi_IN': {
      'hello': 'नमस्ते दुनिया',
      'hint_text': 'आपने कई बार यह बटन दबाया है',
      'change_language': 'अपनी भाषा चुनिए',
      'increment': 'वृद्धि'
    },
  };
}