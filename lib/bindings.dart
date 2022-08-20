import 'package:get/get.dart';
import 'package:practice_test/data_controller.dart';

class ControllerBindings extends Bindings{

@override
  void dependencies() {
    Get.lazyPut<DataController>(() => DataController());
  }
}