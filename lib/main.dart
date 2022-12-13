import 'package:floria/app/common/ui/themes/floria_theme/floria_theme.dart';
import 'package:floria/app/common/ui/themes/theme_manager.dart';
import 'package:floria/app/features/common_feature/ui/sign_up_screen/sign_up.dart';

import 'package:floria/app/features/common_feature/ui/splash_screen/splash_screen_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //await Firebase.initializeApp();
  //await HiveManager.instance.hiveInit();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeManager.createTheme(FloriaTheme()),
          home: SignUpView(),
        );
      },
    );
  }
}
