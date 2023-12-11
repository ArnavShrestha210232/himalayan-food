// import 'package:eccomerce/constant/Tabbar.dart';

import 'package:eccomerce/views/ForgotPasswordPage/forgot_page.dart';
import 'package:eccomerce/views/NavigationPage/SecondaryPages/checkout.dart';
import 'package:eccomerce/views/NavigationPage/SecondaryPages/descripition.dart';
import 'package:eccomerce/views/NavigationPage/SecondaryPages/notification.dart';
import 'package:eccomerce/views/NavigationPage/SecondaryPages/payment.dart';
import 'package:eccomerce/views/NavigationPage/SecondaryPages/review.dart';
import 'package:eccomerce/views/NavigationPage/SecondaryPages/shop.dart';
import 'package:eccomerce/views/NavigationPage/cart_page.dart';
import 'package:eccomerce/views/NavigationPage/home_page.dart';
import 'package:eccomerce/views/bottom_navexample.dart';
import 'views/LoginPage/login_page.dart';
import 'views/SignupPage/signup_page.dart';

final routes = {
  "/": (context) => HomePage(),
  'home': (context) => HomePage(),
  'login': (context) => LoginPage(),
  'signup': (context) => SignUpPage(),
  'forgot': (context) => ForgotPage(),
  'bottomnavbar': (context) => BottomNav(),
  'notification': (context) => Notificationn(),
  'checkout': (context) => Checkout(),
  'payment': (context) => Payment(),
  'review': (context) => Review(),
  'shop': (context) => Shop(),
  'cart': (context) => CartPage(),
  'description': (context) => Description(),
  // 'tabbar': (context) => TabBarExample(),
  // 'dashboard': (context) => DashboardPage(),
};
