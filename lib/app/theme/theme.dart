import 'package:obra_limpa/app/utils/exports.dart';

MaterialColor primarySwatch = const MaterialColor(
  0xFFFF1A1A,
  const <int, Color>{
    50: const Color(0xFFFF1A1A),
    100: const Color(0xFFFF1A1A),
    200: const Color(0xFFFF1A1A),
    300: const Color(0xFFFF1A1A),
    400: const Color(0xFFFF1A1A),
    500: const Color(0xFFFF1A1A),
    600: const Color(0xFFFF1A1A),
    700: const Color(0xFFFF1A1A),
    800: const Color(0xFFFF1A1A),
    900: const Color(0xFFFF1A1A),
  },
);

MaterialColor secondarySwatch = const MaterialColor(
  0xFF009DFF,
  const <int, Color>{
    50: const Color(0xFF009DFF),
    100: const Color(0xFF009DFF),
    200: const Color(0xFF009DFF),
    300: const Color(0xFF009DFF),
    400: const Color(0xFF009DFF),
    500: const Color(0xFF009DFF),
    600: const Color(0xFF009DFF),
    700: const Color(0xFF009DFF),
    800: const Color(0xFF009DFF),
    900: const Color(0xFF009DFF),
  },
);

class ThemeConfig {
  static ThemeData themeData = ThemeData(
    backgroundColor: colorPalette.neutral500,
    scaffoldBackgroundColor: Color(0xFFF5F5F8),
    primarySwatch: primarySwatch,
    accentColor: secondarySwatch,
    appBarTheme: AppBarTheme(
      textTheme: appBarTextTheme,
    ),
    highlightColor: primarySwatch,
    buttonTheme: ButtonThemeData(
      textTheme: ButtonTextTheme.primary,
    ),
    fontFamily: 'TwentiethCenturyMT',
    primaryTextTheme: lightTextTheme,
    accentTextTheme: lightTextTheme,
    textTheme: lightTextTheme,
    dividerTheme: DividerThemeData(
      thickness: 2,
    ),
    iconTheme: lightIconTheme,
  );

  static ColorPalette colorPalette = ColorPalette(
    brand100: Color(0xFFFF1A1A),
    brand200: Color(0xFFFF1A1A),
    accent100: Color(0xFF009DFF),
    accent200: Color(0xFF009DFF),
    danger100: Color.fromRGBO(173, 0, 0, 1),
    // #AD0000
    danger200: Color.fromRGBO(173, 0, 0, 1),
    // #AD0000
    warning100: Color.fromRGBO(235, 113, 0, 1),
    // #EB7100
    warning200: Color.fromRGBO(255, 156, 66, 1),
    // #FF9C42
    success100: Color.fromRGBO(0, 122, 110, 1),
    // #007A6E
    success200: Color.fromRGBO(0, 165, 149, 1),
    // #00A595
    neutral100: Color.fromRGBO(10, 10, 10, 1),
    // #0A0A0A
    neutral200: Color.fromRGBO(79, 79, 79, 1),
    // #4F4F4F
    neutral300: Color.fromRGBO(151, 151, 151, 1),
    // #979797
    neutral400: Color.fromRGBO(232, 232, 232, 1),
    // #E8E8E8
    neutral500: Color(0xFFF5F5F8),
    // #FFFFFF
  );
}

TextTheme appBarTextTheme = TextTheme(
  headline6: TextStyle(
    color: Colors.white,
    fontSize: 20,
    fontWeight: FontWeight.w600,
  ),
);

TextTheme lightTextTheme = TextTheme(
  headline1: TextStyle(
    color: ThemeConfig.colorPalette.neutral100,
    fontWeight: FontWeight.w600,
    fontSize: 24,
  ),
  headline2: TextStyle(
    color: ThemeConfig.colorPalette.neutral200,
    fontWeight: FontWeight.w600,
    fontSize: 20,
  ),
  headline3: TextStyle(
    color: ThemeConfig.colorPalette.neutral200,
    fontWeight: FontWeight.w600,
    fontSize: 18,
  ),
  headline4: TextStyle(
    color: ThemeConfig.colorPalette.neutral200,
    fontWeight: FontWeight.w600,
    fontSize: 16,
  ),
  headline5: TextStyle(
    color: ThemeConfig.colorPalette.neutral200,
    fontWeight: FontWeight.w600,
    fontSize: 14,
  ),
  headline6: TextStyle(
    color: ThemeConfig.colorPalette.neutral200,
    fontWeight: FontWeight.w600,
    fontSize: 20,
  ),
  bodyText1: TextStyle(
    color: ThemeConfig.colorPalette.neutral200,
    fontWeight: FontWeight.w400,
    fontSize: 14,
  ),
  bodyText2: TextStyle(
    color: ThemeConfig.colorPalette.neutral200,
    fontWeight: FontWeight.w400,
    fontSize: 12,
  ),
  subtitle1: TextStyle(
    color: ThemeConfig.colorPalette.neutral200,
    fontWeight: FontWeight.w400,
    fontSize: 16.0,
  ),
  subtitle2: TextStyle(
    color: ThemeConfig.colorPalette.neutral200,
    fontWeight: FontWeight.w400,
    fontSize: 14.0,
  ),
  button: TextStyle(
    color: ThemeConfig.colorPalette.neutral500,
    fontWeight: FontWeight.w600,
    fontSize: 15.0,
  ),
  caption: TextStyle(
    fontSize: 12.0,
  ),
  overline: TextStyle(
    fontSize: 10.0,
  ),
);

IconThemeData darkIconTheme = IconThemeData(
  color: Colors.white,
);

IconThemeData lightIconTheme = IconThemeData(
  color: ThemeConfig.colorPalette.neutral200,
);
