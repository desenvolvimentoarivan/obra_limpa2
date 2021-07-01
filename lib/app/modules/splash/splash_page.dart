import 'package:obra_limpa/app/utils/exports.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  /*final controller = Get.find<SplashController>();

  @override
  void initState() {
    WidgetsBinding.instance?.addPostFrameCallback((_) {
      //controller.inciar();
    });
    super.initState();
  }*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            child: Image.asset(
              'assets/imagens/splash.png',
              fit: BoxFit.cover,
            ),
          ),
          Container(
            padding: EdgeInsets.only(
              bottom: 200,
            ),
            child: Image.asset(
              'assets/imagens/logoSplash.png',
            ),
            width: 250,
          ),
        ],
      ),
    );
  }
}
