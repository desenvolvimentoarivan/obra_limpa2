import 'package:flutter_svg/flutter_svg.dart';
import 'package:obra_limpa/app/utils/exports.dart';

class CustomNotService extends StatelessWidget {
  const CustomNotService({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SvgPicture.asset(
            'assets/imagens/search.svg',
            height: 400,
          ),
          Text(
            'Sem Pedido',
            style: TextStyle(
              fontSize: 35,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
