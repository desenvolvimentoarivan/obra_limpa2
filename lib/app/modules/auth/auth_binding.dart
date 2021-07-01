import 'package:obra_limpa/app/modules/auth/auth_controller.dart';
import 'package:obra_limpa/app/utils/exports.dart';

class AuthBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AuthController());
  }
}
