import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:interview_exercise/app/app.locator.dart';

import 'package:interview_exercise/app/app.router.dart';
import 'package:interview_exercise/core/theme/vesti_theme.dart';
import 'package:stacked_services/stacked_services.dart';

void main() {
  setupLocator();
  

  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(
    SystemUiMode.manual,
    overlays: [SystemUiOverlay.top, SystemUiOverlay.bottom],
  ).then(
    (_) => runApp(
      ScreenUtilInit(
        
        designSize: const Size(375, 812),
        minTextAdapt: true,
        builder: ((_, __) =>  MyApp()),
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Vesti Exercise',
      debugShowCheckedModeBanner: false,
        theme: VestiThemeManager.lightTheme,
        themeMode: ThemeMode.light,
      initialRoute: Routes.startupView,
      onGenerateRoute: StackedRouter().onGenerateRoute,
      navigatorKey: StackedService.navigatorKey,
      navigatorObservers: [
        StackedService.routeObserver,
      ],
    );
  }
}
