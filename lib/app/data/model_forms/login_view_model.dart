import 'package:obra_limpa/app/utils/exports.dart';

class LoginViewModel extends GetxController {
  final _user = ''.obs;
  final _password = ''.obs;
  final _remember = true.obs;

  get user => _user.value;
  set user(value) => _user.value = value;

  get password => _password.value;
  set password(value) => _password.value = value;

  get remember => _remember.value;
  set remember(value) => _remember.value = value;

  updateRemeber(bool? value) {
    remember = value;
  }

  String validateUser() {
    if (user.isEmpty) {
      return 'Insira seu usuário';
    }

    return '';
  }

  String validatePassword() {
    if (password.isEmpty) {
      return 'Insira sua senha';
    } else if (password.length < 3) {
      return 'Senha deve conter mais de 6 caracteres';
    }

    return '';
  }

  get validSignIn => validateUser() == '' && validatePassword() == '';
}
