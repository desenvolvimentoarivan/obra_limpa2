import 'package:getwidget/getwidget.dart';
import 'package:motion_toast/motion_toast.dart';
import 'package:obra_limpa/app/data/model_forms/login_view_model.dart';
import 'package:obra_limpa/app/utils/exports.dart';
import 'package:oktoast/oktoast.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';
import 'package:fluttertoast/fluttertoast.dart';

class AuthController extends GetxController {
  final _loading = false.obs;
  final _loginForm = LoginViewModel().obs;

  TextEditingController userController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  final RoundedLoadingButtonController btnController =
      RoundedLoadingButtonController();

  get loading => this._loading.value;
  set loading(value) => this._loading.value = value;

  get loginForm => this._loginForm.value;
  set loginForm(value) => this._loading.value = value;

  get validateLogin => loginForm.validSignIn;

  @override
  onInit() {
    userController.addListener(() {
      loginForm.user = userController.text;
    });

    passwordController.addListener(() {
      loginForm.password = passwordController.text;
    });

    super.onInit();
  }

  void sigin(BuildContext context) async {
    Future.delayed(Duration(seconds: 1), () {
      btnController.reset();
      /*MotionToast.error(
        title: "Error",
        titleStyle: TextStyle(fontWeight: FontWeight.bold),
        description: "Login Inválido",
        enableAnimation: false,
      ).show(context);

      showToast(
        'Ola',
        duration: Duration(seconds: 2),
        position: ToastPosition.top,
        backgroundColor: Colors.black.withOpacity(0.8),
        radius: 3.0,
        textStyle: TextStyle(fontSize: 30.0),
      );*/

      if (userController.text == 'admin' &&
          passwordController.text == '12345678') {
        Get.offAllNamed(Routes.HOME);
      } else {
        Fluttertoast.showToast(
            msg: "login invalido",
            toastLength: Toast.LENGTH_LONG,
            gravity: ToastGravity.BOTTOM_RIGHT,
            timeInSecForIosWeb: 2,
            backgroundColor: Colors.red,
            textColor: Colors.white,
            fontSize: 16.0);
      }
    });
  }
}
