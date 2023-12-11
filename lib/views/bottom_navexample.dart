// import 'package:eccomerce/views/NavigationPage/cart_page.dart';
// import 'package:eccomerce/views/NavigationPage/home_page.dart';
// import 'package:eccomerce/views/NavigationPage/profile_page.dart';
// import 'package:eccomerce/views/NavigationPage/wishlist_page.dart';
// import 'package:flutter/material.dart';

// /// Flutter code sample for [BottomNavigationBar].

// // void main() => runApp(const BottomNavigationBarExampleApp());

// // class BottomNavigationBarExampleApp extends StatelessWidget {
// //   const BottomNavigationBarExampleApp({super.key});

// //   @override
// //   Widget build(BuildContext context) {
// //     return const MaterialApp(
// //       home: BottomNavigationBarExample(),
// //     );
// //   }
// // }

// class BottomNavigationBarExample extends StatefulWidget {
//   const BottomNavigationBarExample({super.key});

//   @override
//   State<BottomNavigationBarExample> createState() =>
//       _BottomNavigationBarExampleState();
// }

// class _BottomNavigationBarExampleState
//     extends State<BottomNavigationBarExample> {
//   int _selectedIndex = 0;
//   static const TextStyle optionStyle =
//       TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
// static const List _widgetOptions = [
//   Text(
//     'Index 0: Home',
//     style: optionStyle,
//   ),
//   Text(
//     'Index 1: Wishlist',
//     style: optionStyle,
//   ),
//   Text(
//     'Index 2: Cart',
//     style: optionStyle,
//   ),
//   Text(
//     'Index 3: Profile',
//     style: optionStyle,
//   ),
//   // HomePage(),
//   // WishlistPage(),
//   // CartPage(),
//   // ProfilePage(),
// ];

// void _onItemTapped(int index) {
//   setState(() {
//     _selectedIndex = index;
//     print(_selectedIndex);
//   });
// }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('BottomNavigationBar Sample'),
//       ),
// body: Center(
//   child: _widgetOptions.elementAt(_selectedIndex),
// ),
//       bottomNavigationBar:
// BottomNavigationBar(
//         items: const <BottomNavigationBarItem>[
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home),
//             label: 'Home',
//             backgroundColor: Colors.red,
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.favorite),
//             label: 'Wishlist',
//             backgroundColor: Colors.green,
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.shopping_cart_checkout_outlined),
//             label: 'Cart',
//             backgroundColor: Colors.purple,
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.person),
//             label: 'Profile',
//             backgroundColor: Colors.pink,
//           ),
//         ],
//         currentIndex: _selectedIndex,
//         selectedItemColor: Colors.amber[800],
//         onTap: _onItemTapped,
//       ),
//   );
// }
// }

import 'package:eccomerce/constant/color_constant.dart';
import 'package:eccomerce/helper/drawer_tab.dart';
import 'package:eccomerce/provider/bottom_nav_provider.dart';
import 'package:eccomerce/views/NavigationPage/cart_page.dart';
import 'package:eccomerce/views/NavigationPage/home_page.dart';
import 'package:eccomerce/views/NavigationPage/profile_page.dart';
import 'package:eccomerce/views/NavigationPage/wishlist_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BottomNav extends StatefulWidget {
  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  static const List _widgetOptions = [
    HomePage(),
    WishlistPage(),
    CartPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Consumer<BottomNavProvider>(
      builder: (context, value, child) => Scaffold(
        appBar: AppBar(
          // backgroundColor: ColorConstant.blackColor,
          foregroundColor: Colors.black,
          shadowColor: Colors.black,
          elevation: 0,
          title: Padding(
            padding: EdgeInsets.only(left: 85),
            child: Image(
              height: 50,
              image: AssetImage('assets/favicon.png'),
              alignment: Alignment.center,
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 15),
              child: InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, 'shop');
                  },
                  child: Icon(Icons.shopping_bag)),
            ),
            Padding(
              padding: EdgeInsets.only(right: 20),
              child: InkWell(
                onTap: () {
                  // print("TAPPED");
                  Navigator.pushNamed(context, 'notification');
                },
                child: Badge(
                  label: Text('3'),
                  child: Icon(
                    Icons.notifications,
                  ),
                ),
              ),
            ),
          ],
        ),
        drawer: DrawerTab(),
        body: Center(
          child: _widgetOptions.elementAt(value.selectedIndex),
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: ColorConstant.primaryColor,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
              backgroundColor: Colors.red,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: 'Wishlist',
              backgroundColor: Colors.green,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart_checkout_outlined),
              label: 'Cart',
              backgroundColor: Colors.purple,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
              backgroundColor: Colors.pink,
            ),
          ],
          currentIndex: value.selectedIndex,
          selectedItemColor: ColorConstant.whiteColor,
          onTap: (index) {
            value.onItemTapped(index);
          },
        ),
      ),
    );
  }
}
