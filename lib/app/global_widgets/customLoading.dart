import 'package:lottie/lottie.dart';
import 'package:obra_limpa/app/utils/exports.dart';

class CustomLoading extends StatelessWidget {
  const CustomLoading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Lottie.asset(
          'assets/imagens/loading.json',
          width: 300,
          height: 300,
          animate: true,
          repeat: true,
          //fit: BoxFit.fill,
        ),
      ),
    );
  }
}
