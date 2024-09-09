import 'package:bangladesh_2point0/controller/home_controller.dart';
import 'package:get/get.dart';

class ControllerBin extends Bindings{
  @override
  void dependencies() {
    Get.put<Home_Controller>(Home_Controller());
  }

}