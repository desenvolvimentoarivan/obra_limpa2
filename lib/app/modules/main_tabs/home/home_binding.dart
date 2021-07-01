import 'package:obra_limpa/app/modules/main_tabs/home/home_controller.dart';
import 'package:obra_limpa/app/utils/exports.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController());
  }
}
