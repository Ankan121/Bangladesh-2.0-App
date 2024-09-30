import 'package:get/get.dart';

import '../model/diedlistmodel.dart';

class Home_Controller extends GetxController{

  //Carasoul Slider
  List<String> imageslider = [
    'assets/splash/rounded 1.jpeg',
    'assets/splash/rounded 3.jpeg',
    'assets/splash/rounded 4.jpeg',

  ];


  List diedlist = [
    {
      'img' : 'assets/splash/rounded 4.jpeg',
      'name' : 'Abu Sayeed',
      'Died' : 'July 16, 2024',
      'description' : 'All Details Abu Sayeed Text all Detiails',
    },
    {
      'img' : 'assets/splash/rounded 4.jpeg',
      'name' : 'Abu Sayeed',
      'Died' : 'July 16, 2024',
      'description' : 'All Details Abu Sayeed Text all Detiails',
    },
    {
      'img' : 'assets/splash/rounded 4.jpeg',
      'name' : 'Abu Sayeed',
      'Died' : 'July 16, 2024',
      'description' : 'All Details Abu Sayeed Text all Detiails',
    },
    {
      'img' : 'assets/splash/rounded 4.jpeg',
      'name' : 'Abu Sayeed',
      'Died' : 'July 16, 2024',
      'description' : 'All Details Abu Sayeed Text all Detiails',
    },
    {
      'img' : 'assets/splash/rounded 4.jpeg',
      'name' : 'Abu Sayeed',
      'Died' : 'July 16, 2024',
      'description' : 'All Details Abu Sayeed Text all Detiails',
    },
    {
      'img' : 'assets/splash/rounded 4.jpeg',
      'name' : 'Abu Sayeed',
      'Died' : 'July 16, 2024',
      'description' : 'All Details Abu Sayeed Text all Detiails',
    }
  ];



  //======================Died List 2.0========================
  List<DiedList> diedlistmodelresponse = [];

  //save response from api
  void setdiedlistmodel(){
    diedlistmodelresponse = diedListFromJson(diedlist);
    update();
  }

}