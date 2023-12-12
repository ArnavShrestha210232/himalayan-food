import 'package:eccomerce/helper/custom_button_homepage.dart';
import 'package:eccomerce/helper/custom_rating.dart';
import 'package:flutter/material.dart';

class Description extends StatelessWidget {
  const Description({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Image(
                  width: double.infinity,
                  height: 350,
                  image: AssetImage('assets/basmati-rice.png'),
                ),
                Positioned(
                  top: 30,
                  child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.arrow_back),
                  ),
                ),
                Positioned(
                    top: 40,
                    left: 125,
                    child: Text(
                      'Basmati Rice',
                      style: TextStyle(fontSize: 20),
                    )),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12, right: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0, bottom: 8),
                    child: Row(
                      children: [
                        Text(
                          'Category:',
                          style: TextStyle(fontSize: 18),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          'Local Rice',
                          style: TextStyle(
                              fontSize: 15, color: Colors.grey.shade700),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Text(
                      'Description:',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                        style: TextStyle(fontSize: 12),
                        // overflow: TextOverflow.visible,
                        // maxLines: 5,
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8),
                    child: Row(
                      children: [
                        Text(
                          'Price:',
                          style: TextStyle(fontSize: 18),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: Text(
                            '\$400',
                            style: TextStyle(
                                decoration: TextDecoration.lineThrough,
                                color: Colors.grey,
                                fontSize: 15),
                          ),
                        ),
                        Text(
                          '\$350',
                          style: TextStyle(color: Colors.amber, fontSize: 15),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0, bottom: 8),
                    child: Rating_Builder(
                      itemSize: 35,
                      itemPadding: EdgeInsets.symmetric(horizontal: 12),
                    ),
                  ),
                  Custom_Button_Homepage(
                    text: 'ADD TO CART',
                    fontSize: 20,
                    height: 50,
                    minWidth: 100,
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
