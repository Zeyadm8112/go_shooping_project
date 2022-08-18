import 'package:e_commerce/utility/app_colors.dart';
import 'package:flutter/cupertino.dart';

class WishlistViewModel extends ChangeNotifier {
  bool list = false;
  Color listColor = AppColors.primaryColor;
  Color gridColor = AppColors.secondaryColor;

  gridView() {
    list = false;
   
   listColor = AppColors.primaryColor;
   gridColor = AppColors.secondaryColor;



    notifyListeners();
  }
    listView() {
    list = true;
   listColor = AppColors.secondaryColor;
   gridColor = AppColors.primaryColor;

    notifyListeners();


}
}