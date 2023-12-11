import 'package:eccomerce/constant/color_constant.dart';
import 'package:eccomerce/provider/bottom_nav_provider.dart';
import 'package:eccomerce/provider/password_provider.dart';
import 'package:eccomerce/provider/search_provider.dart';
import 'package:eccomerce/routes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  // The following code below is used when we have functions we need to initialize.
  // WidgetsFlutterBinding.ensureInitialized();

  // The following code below is used when we have to fixed the potrait state of the app.
  // SystemChrome.setPreferredOrientations(
  //     [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

//
  // SystemChrome.setSystemUIOverlayStyle(
  //   // navigation bar and status bar of bottom and top in the phone.
  //   SystemUiOverlayStyle(
  //     systemNavigationBarColor: Colors.transparent, // navigation bar color
  //     statusBarColor: Colors.transparent,
  //   ),
  // );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => PasswordProvider()),
        ChangeNotifierProvider(create: (_) => BottomNavProvider()),
        ChangeNotifierProvider(create: (_) => Search_provider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Himalayan Hills Food',
        theme: ThemeData(
          appBarTheme: AppBarTheme(
            backgroundColor: ColorConstant.whiteColor,
          ),
          useMaterial3: true,
          colorSchemeSeed: ColorConstant.secondaryColor,
        ),
        initialRoute: 'login',
        routes: routes,
      ),
    );
  }
}
