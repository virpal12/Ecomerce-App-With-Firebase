

import 'package:flutter/cupertino.dart';

class Keyboard {
  static void hideKeyboard (BuildContext context){
    FocusScopeNode currentFocus = FocusScope.of(context);

    if(!currentFocus.hasPrimaryFocus){
      currentFocus.unfocus();
    }
  }
}