import 'package:flutter/services.dart';
import 'package:obra_limpa/app/utils/exports.dart';
import 'package:oktoast/oktoast.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: Color(0xF5F5F8),
      //systemNavigationBarColor: Color(0xF5F5F8),
    ),
  );

  runApp(
    LayoutBuilder(
      builder: (context, constraints) {
        return OrientationBuilder(
          builder: (context, orientation) {
            SizeConfig().init(constraints, orientation);
            return OKToast(
              position: ToastPosition.bottom,
              handleTouth: true,
              dismissOtherOnShow: true,
              child: GetMaterialApp(
                debugShowCheckedModeBanner: false,
                title: "Obra Limpa",
                initialRoute: Routes.SIGNIN,
                getPages: AppPages.routes,
                theme: ThemeConfig.themeData,
                localizationsDelegates: [
                  GlobalMaterialLocalizations.delegate,
                  GlobalWidgetsLocalizations.delegate,
                ],
                supportedLocales: [
                  const Locale('pt', 'BR'),
                ],
              ),
            );
          },
        );
      },
    ),
  );
}
