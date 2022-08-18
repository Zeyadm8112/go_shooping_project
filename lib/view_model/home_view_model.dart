import 'dart:io';

import 'package:dio/dio.dart';
import 'package:e_commerce/model/catagories.dart';
import 'package:e_commerce/model/products.dart';
import 'package:flutter/cupertino.dart';

import '../utility/app_strings.dart';

enum HomeScreenState {
  intializing,
  loading,
  loaded,
  failed,
  notConnected,
  searching,
  filtering
}

class HomeViewModel extends ChangeNotifier {
  List<dynamic>? categories;
  List<dynamic>? products;
  List<dynamic> shirts = [];
  List<dynamic> shorts = [];
  List<dynamic> shoes = [];
  List<dynamic> pants = [];
  List<dynamic> skirt = [];
  List<dynamic> skarfs = [];
  List<dynamic> searchedItem = [];
  String searchName = "";
  String? selectedCategoryName;
  int? selectedCategoryId;
  final list = ['Shirts', 'Pants', 'Skirts', 'Shorts', 'Scarfs'];

  dropCheck(String val) {
    selectedCategoryName = val;
    if (val == "Shirts") {
      selectedCategoryId = 0;
    } else if (selectedCategoryName == "Pants") {
      selectedCategoryId = 1;
    } else if (selectedCategoryName == "Skirts") {
      selectedCategoryId = 2;
    
        } else if (selectedCategoryName == "Shorts") {
      selectedCategoryId = 3;
    
    } else if (selectedCategoryName == "Scarfs") {
      selectedCategoryId = 4;
    }

    notifyListeners();
  }

  HomeScreenState state = HomeScreenState.intializing;
  setState(state) {
    this.state = state;
    notifyListeners();
  }

// assignSearch(String text){
//   searchName=text;

// notifyListeners();
// }

  itemSearch(String text) async {
    if (products == []) {
      searchedItem == [];
      notifyListeners();
    } else {
      searchedItem = await products!
          .where(
              ((element) => element.productName.toLowerCase().startsWith(text)))
          .toList();
      notifyListeners();
    }
    return searchedItem;
  }

  bool? connected;
  String errorMessage = "";
  // checkConnection()assync{
  //  connected =await InternetConnectionChecker().hasConnection;
  //  connected!?setState(HomeScreenState.intializing):setState(HomeScreenState.notConnected);
  // }

  Future<List<dynamic>> fetchCategories() async {
    final Dio dio = Dio();
    List<dynamic> categories;
    try {
      var response = await dio.get(
        "${AppStrings.baseUrl}${AppStrings.categoriesEndPoint}",
      );

      if (response.statusCode == 200) {
        // var jsonString = response.body;
        var data = await response.data;

        categories = data.map((e) => Categories.fromJson(e)).toList();
        //  (data as List).map((e) => DestinationGoModel.fromJson(e)).toList();

        // destinationBackModelFromJson(result);
        // return s;
      } else {
        categories = [];
      }
    } on SocketException {
      errorMessage = "Not connected";
      setState(HomeScreenState.notConnected);
      return [];
    } on FormatException {
      errorMessage = "Error occured try agian later";
      setState(HomeScreenState.failed);
      return [];
    } on DioError catch (e) {
      _handleDioErrors(e);
      return [];
    }
    if (categories == []) {
      return [];
    } else {
      this.categories = categories;
      return categories;
    }
  }

  // getTravels() async {
  //   travels = await fetchAllTravles();
  //   notifyListeners();
  // }

  // NetworkImage(String imagePath) {
  //   return NetworkImage(
  //       "http://icecode-001-site1.itempurl.com//Content/IMG/$imagePath");
  // }

  // getImage(){

  getCategories() async {
    if (categories == null) {
      categories = await fetchCategories();
      notifyListeners();
      return categories;
    } else {
      return categories;
    }
  }

  Future<List<dynamic>> fetchProducts() async {
    final Dio dio = Dio();
    List<dynamic> products;
    try {
      var response = await dio.get(
        "${AppStrings.baseUrl}${AppStrings.productsEndPoint}",
      );

      if (response.statusCode == 200) {
        // var jsonString = response.body;
        var data = await response.data;

        products = data.map((e) => Products.fromJson(e)).toList();
        //  (data as List).map((e) => DestinationGoModel.fromJson(e)).toList();

        // destinationBackModelFromJson(result);
        // return s;
      } else {
        products = [];
      }
    } on SocketException {
      errorMessage = "Not connected";
      setState(HomeScreenState.notConnected);
      return [];
    } on FormatException {
      errorMessage = "Error occured try agian later";
      setState(HomeScreenState.failed);
      return [];
    } on DioError catch (e) {
      _handleDioErrors(e);
      return [];
    }
    if (products == []) {
      return [];
    } else {
      this.products = products;
      return products;
    }
  }

  showShirts() async {
    if (products == []) {
      shirts == [];
    } else {
      shirts = await products!
          .where(((element) => element.category == 'shirt'))
          .toList();
    }
    return shirts;
  }

//  showShoes()async{
// if(products==[]){
//   shoes==[];
// }else{
// shoes=await products!.where(((element) => element.categoryId==4
// )).toList();

// }
// return shoes;

//  }
  showSkirts() async {
    if (products == []) {
      skirt == [];
    } else {
      skirt = await products!
          .where(((element) => element.category == 'Skirts'))
          .toList();
    }
    return skirt;
  }

  showPants() async {
    if (products == []) {
      pants == [];
    } else {
      pants = await products!
          .where(((element) => element.category == 'Pants'))
          .toList();
    }
    return pants;
  }

  showScarfs() async {
    if (products == []) {
      skarfs == [];
    } else {
      skarfs = await products!
          .where(((element) => element.category == 'Scarfs'))
          .toList();
    }
    return skarfs;
  }

  showShorts() async {
    if (products == []) {
      shorts == [];
    } else {
      shorts = await products!
          .where(((element) => element.category == 'Shorts'))
          .toList();
    }
    return shorts;
  }

  getProducts() async {
    if (products == null) {
      products = await fetchProducts();
      return products;
    } else {
      return products;
    }
  }

  // }

  _handleDioErrors(DioError error) {
    switch (error.type) {
      case DioErrorType.connectTimeout:
        setState(HomeScreenState.failed);
        errorMessage =
            "Your internet connection is bad please try agian later,408";
        break;
      case DioErrorType.sendTimeout:
        setState(HomeScreenState.failed);
        errorMessage =
            "Your internet connection is bad please try agian later,2";
        break;
      case DioErrorType.receiveTimeout:
        setState(HomeScreenState.failed);
        errorMessage =
            "Your internet connection is bad please try agian later,3";
        break;
      case DioErrorType.response:
        switch (error.response?.statusCode) {
          case 404:
            setState(HomeScreenState.failed);
            errorMessage = "User not found, ";
            break;
          case 400:
            setState(HomeScreenState.failed);
            errorMessage = "Your username or password is wrong";
            break;
          case 500:
            setState(HomeScreenState.failed);
            errorMessage = "Something went wrong please try agian later, 500";
            break;
          case 408:
            setState(HomeScreenState.failed);
            errorMessage =
                "Your internet connection is bad please try agian later,408";
            break;
        }

        break;
      case DioErrorType.cancel:
        break;
      case DioErrorType.other:
        setState(HomeScreenState.failed);
        errorMessage = "No internet connection";

        break;
    }
  }
}
