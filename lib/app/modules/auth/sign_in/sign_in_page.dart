import 'package:motion_toast/motion_toast.dart';
import 'package:obra_limpa/app/global_widgets/customTextButton.dart';
import 'package:obra_limpa/app/modules/auth/auth_controller.dart';
import 'package:obra_limpa/app/utils/exports.dart';

class SignInPage extends GetView<AuthController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xF5F5F8),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Obx(
          () => Center(
            child: Padding(
              padding: const EdgeInsets.all(40.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 200,
                    child: Image.asset(
                      'assets/imagens/logo.png',
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Text(
                    'Login',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  CustomTextField(
                    controller: controller.userController,
                    errorText: controller.loginForm.validateUser(),
                    keyboardType: TextInputType.emailAddress,
                    hint: 'Usuário',
                    password: false,
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  CustomTextField(
                    controller: controller.passwordController,
                    errorText: controller.loginForm.validatePassword(),
                    hint: 'Senha',
                    password: true,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  CustomCheckBox(
                    onChange: controller.loginForm.updateRemeber,
                    value: controller.loginForm.remember,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  CustomButtom(
                      btnController: controller.btnController,
                      onPress: controller.validateLogin
                          ? () {
                              controller.sigin(context);
                            }
                          : null),
                  SizedBox(
                    height: 20,
                  ),
                  CustomTextButton(
                    onTap: () => Get.toNamed(Routes.RECOVER_USER),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
