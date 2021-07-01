import 'package:flutter_svg/flutter_svg.dart';
import 'package:obra_limpa/app/global_widgets/customCard.dart';
import 'package:obra_limpa/app/global_widgets/customCard2.dart';
import 'package:obra_limpa/app/global_widgets/customHistoricCard.dart';
import 'package:obra_limpa/app/global_widgets/customLoading.dart';
import 'package:obra_limpa/app/global_widgets/customNotService.dart';
import 'package:obra_limpa/app/modules/main_tabs/request_service/request_service_controller.dart';
import 'package:obra_limpa/app/utils/exports.dart';

class RequestServicePage extends GetView<RequestServiceController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
          /*ListView.builder(
        itemBuilder: (BuildContext _, int index) {
          return CustomHistoricCard();
        },
        itemCount: 1,
      ),*/
          // CustomNotService(),
          //CustomCard2(),
          CustomLoading(),
    );
  }
}
