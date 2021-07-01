import 'package:obra_limpa/app/utils/exports.dart';

class CustomHistoricCard extends StatelessWidget {
  final String? cliente;
  final String? produto;
  final String? telefone;
  final String? tipo;
  final String? total;
  final String? endereco;

  const CustomHistoricCard({
    this.cliente,
    this.produto,
    this.telefone,
    this.tipo,
    this.total,
    this.endereco,
  });

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
