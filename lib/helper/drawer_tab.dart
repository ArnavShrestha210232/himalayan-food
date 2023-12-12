import 'package:eccomerce/helper/custom_listtile_drawer.dart';
import 'package:flutter/material.dart';

class DrawerTab extends StatelessWidget {
  const DrawerTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      // shape: Border.fromBorderSide(BorderSide.none),  //Using this code the border of the drawer gets uncurved
      width: 250,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            padding: EdgeInsets.only(bottom: 17),
            decoration: BoxDecoration(
              color: Colors.black,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(left: 65),
                  child: Image.asset(
                    'assets/favicon.png',
                    width: 110,
                    height: 99,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 18),
                  child: Text(
                    'Arnav Shrestha',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                    textAlign: TextAlign.left,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 18),
                  child: Text(
                    'arnavshresthaa@gmail.com',
                    style: TextStyle(color: Colors.white, fontSize: 13),
                    textAlign: TextAlign.left,
                  ),
                ),
              ],
            ),
          ),
          // DrawerHeader(
          //   decoration: BoxDecoration(
          //     color: Color.fromARGB(255, 19, 35, 211),
          //     image: DecorationImage(
          //       image: AssetImage('res/emblem1.png'),
          //     ),
          //   ),
          //   child: SizedBox(),
          // ),
          Custom_Listtile_Drawer(
            text: 'Home',
            iconn: Icons.home,
            onTap: () {
              Navigator.pushNamed(context, 'bottomnavbar');
            },
          ),

          Custom_Listtile_Drawer(
              iconn: Icons.shopping_bag,
              text: 'Shop',
              onTap: () {
                Navigator.pushNamed(context, 'notification');
              }),
          Custom_Listtile_Drawer(
              iconn: Icons.payment,
              text: 'Review Transactions',
              onTap: () {
                Navigator.pushNamed(context, 'review');
              }),
          Custom_Listtile_Drawer(iconn: Icons.info, text: 'Info', onTap: () {}),
          Custom_Listtile_Drawer(
              iconn: Icons.settings, text: 'Setting', onTap: () {}),
          Custom_Listtile_Drawer(iconn: Icons.help, text: 'Help', onTap: () {}),
        ],
      ),
    );
  }
}
