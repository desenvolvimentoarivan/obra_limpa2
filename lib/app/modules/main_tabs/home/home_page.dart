import 'package:fancy_bottom_navigation/fancy_bottom_navigation.dart';
import 'package:ionicons/ionicons.dart';
import 'package:obra_limpa/app/global_widgets/customDrawer.dart';
import 'package:obra_limpa/app/modules/main_tabs/assigned_service/assigned_service_page.dart';
import 'package:obra_limpa/app/modules/main_tabs/historic_service/historic_service_page.dart';
import 'package:obra_limpa/app/modules/main_tabs/home/home_controller.dart';
import 'package:obra_limpa/app/modules/main_tabs/request_service/request_service_page.dart';

import 'package:obra_limpa/app/utils/exports.dart';

class HomePage extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        endDrawer: CustomDrawer(),
        appBar: AppBar(
          title: Image.asset(
            'assets/imagens/logoAppBar.png',
          ),
          elevation: 0,
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
          backgroundColor: Color(0xF5F5F8),
        ),
        bottomNavigationBar: FancyBottomNavigation(
          textColor: ThemeConfig.themeData.primaryColor,
          tabs: [
            TabData(iconData: Ionicons.home_outline, title: "Início"),
            TabData(iconData: Ionicons.clipboard_outline, title: "Lista"),
            TabData(iconData: Ionicons.list_outline, title: "Histórico")
          ],
          onTabChangedListener: (position) {
            controller.changeTabIndex(position);
          },
          initialSelection: controller.tabIndex,
        ),
        body: Container(
          child: IndexedStack(
            index: controller.tabIndex,
            children: [
              RequestServicePage(),
              AssignedServicePage(),
              HistoricServicePage(),
            ],
          ),
        ),
      ),
    );
  }
}
