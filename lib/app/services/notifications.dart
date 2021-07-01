import 'package:obra_limpa/app/utils/exports.dart';

abstract class Notifications {
  static void error({
    String title = 'Ocorreu um erro',
    @required String? message,
    Duration duration = const Duration(seconds: 4),
  }) {
    Get.showSnackbar(GetBar(
      title: title,
      message: message,
      duration: duration,
      backgroundColor: ThemeConfig.colorPalette.danger100 ?? Color(0xFF),
    ));
  }

  static void success({
    String title = 'Sucesso!',
    @required String? message,
    Duration duration = const Duration(seconds: 2),
  }) {
    Get.showSnackbar(GetBar(
      title: title,
      message: message,
      duration: duration,
      backgroundColor: Colors.green,
    ));
  }
}
