import 'package:ionicons/ionicons.dart';
import 'package:lottie/lottie.dart';
import 'package:obra_limpa/app/utils/exports.dart';

class CustomCard2 extends StatelessWidget {
  final String? cliente;
  final String? produto;
  final String? telefone;
  final String? tipo;
  final String? total;
  final String? endereco;
  final Function()? entregue;
  final Function()? cancelado;
  final Function()? mapa;

  const CustomCard2(
      {this.cliente,
      this.produto,
      this.telefone,
      this.tipo,
      this.total,
      this.endereco,
      this.entregue,
      this.cancelado,
      this.mapa});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      child: Center(
        child: Column(
          children: <Widget>[
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              elevation: 7,
              child: Container(
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Dados do Serviço:",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w600),
                        ),
                        InkWell(
                          onTap: () {
                            print('ok');
                          },
                          child: Container(
                            //color: Colors.amber,
                            child: Lottie.asset(
                              'assets/imagens/location2.json',
                              width: 60,
                              height: 60,
                              animate: true,
                              repeat: true,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          "Cliente:",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          width: SizeConfig.vPadding(),
                        ),
                        Text(
                          cliente ?? '',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: SizeConfig.vPadding(),
                    ),
                    Row(
                      children: [
                        Text(
                          "Produto:",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          width: SizeConfig.vPadding(),
                        ),
                        Text(
                          produto ?? '',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: SizeConfig.vPadding(),
                    ),
                    Row(
                      children: [
                        Text(
                          "Telefone:",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          width: SizeConfig.vPadding(),
                        ),
                        Text(
                          telefone ?? '',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: SizeConfig.vPadding(),
                    ),
                    Row(
                      children: [
                        Text(
                          "Tipo:",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(
                          width: SizeConfig.vPadding(),
                        ),
                        Text(
                          tipo ?? '',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: ThemeConfig.colorPalette.accent100,
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: SizeConfig.vPadding(),
                    ),
                    Row(
                      children: [
                        Text(
                          "Total:",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          width: SizeConfig.vPadding(),
                        ),
                        Text(
                          "R\$ $total",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 14,
                            color: ThemeConfig.colorPalette.accent100,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: SizeConfig.vPadding(),
                    ),
                    Row(
                      children: [
                        Text(
                          "Endereço:",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          width: SizeConfig.vPadding(),
                        ),
                        Flexible(
                          child: Text(
                            endereco ?? '',
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: SizeConfig.vPadding(),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: SizeConfig.widthPercent(42),
                          child: ElevatedButton(
                            onPressed: cancelado,
                            child: Text('Cancelar'),
                            style: ElevatedButton.styleFrom(
                              elevation: 5,
                              primary: ThemeConfig.colorPalette.brand100,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: SizeConfig.widthPercent(42),
                          child: ElevatedButton(
                            onPressed: entregue,
                            child: Text('Entregar'),
                            style: ElevatedButton.styleFrom(
                              elevation: 5,
                              primary: ThemeConfig.colorPalette.accent100,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
