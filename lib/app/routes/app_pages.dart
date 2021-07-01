import 'package:obra_limpa/app/modules/auth/auth_binding.dart';
import 'package:obra_limpa/app/modules/auth/recovery_user/recovery_user_page.dart';
import 'package:obra_limpa/app/modules/main_tabs/home/home_binding.dart';
import 'package:obra_limpa/app/modules/main_tabs/home/home_page.dart';
import 'package:obra_limpa/app/utils/exports.dart';
part 'app_routes.dart';

class AppPages {
  static final routes = [
    GetPage(
      name: Routes.INITIAL,
      page: () => SplashPage(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: Routes.SIGNIN,
      page: () => SignInPage(),
      binding: AuthBinding(),
    ),
    GetPage(
      name: Routes.HOME,
      page: () => HomePage(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: Routes.RECOVER_USER,
      page: () => RecoveryUserPage(),
    ),
  ];
}
