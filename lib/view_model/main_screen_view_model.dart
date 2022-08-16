import 'package:flutter/cupertino.dart';

class MainScreenViewModel extends ChangeNotifier{
    int currentIndex=0 ;

    changeScreenIndex(int value){
      currentIndex=value;
      notifyListeners();

    }





}