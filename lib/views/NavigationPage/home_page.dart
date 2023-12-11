import 'package:carousel_slider/carousel_slider.dart';
import 'package:eccomerce/constant/color_constant.dart';
import 'package:eccomerce/helper/custom_bannerbutton.dart';
import 'package:eccomerce/helper/custom_banner2.dart';
import 'package:eccomerce/helper/custom_button_homepage.dart';
import 'package:eccomerce/helper/custom_gridhome.dart';
import 'package:eccomerce/helper/custom_tab_bar.dart';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List data = [
    {
      'image': 'assets/basmati-rice.png',
      'name': "Basmati Rice",
      'price': '\$400',
      'discount price': '\$322',
      'subtitle': 'Local Rice',
      'star': Icons.star,
      'starless': Icons.star_border,
    },
    {
      'image': 'assets/chana.png',
      'name': "Chana",
      'price': '\$202',
      'discount price': '\$195',
      // 'price': 202,
      // 'discount price': 222,
      'subtitle': 'Beans',
      'star': Icons.star,
      'starless': Icons.star_border,
    },
    {
      'image': 'assets/simi.png',
      'name': "Simi",
      'price': '\$400',
      'discount price': '\$322',
      'subtitle': 'Local Rice',
      'star': Icons.star,
      'starless': Icons.star_border,
    },
    {
      'image': 'assets/mustard-oil.png',
      'name': "Mustard Oil",
      'price': '\$400',
      'discount price': '\$322',
      'subtitle': 'Local Rice',
      'star': Icons.star,
      'starless': Icons.star_border,
    },
    {
      'image': 'assets/taichin-rice.png',
      'name': "Taichin Rice",
      'price': '\$400',
      'discount price': '\$322',
      'subtitle': 'Local Rice',
      'star': Icons.star,
      'starless': Icons.star_border,
    },
  ];
  List data1 = [
    {
      'image': 'assets/chana.png',
      'name': "CHANA",
    },
    {
      'image': 'assets/local-rice.png',
      'name': "LOCAL RICE",
    },
    {
      'image': 'assets/mash-daal.png',
      'name': "MASH DAAL",
    },
    {
      'image': 'assets/mosuro-daal.png',
      'name': "MOSURO DAAL",
    },
    {
      'image': 'assets/simi.png',
      'name': "SIMI",
    },
  ];
  List data2 = [
    {'image': 'assets/chirayu.png'},
    {'image': 'assets/dhukuti.png'},
    {'image': 'assets/kuto.png'},
    {'image': 'assets/miyo.png'},
  ];
  // var scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // key: scaffoldKey,
      // drawer: Drawer(),
      // appBar: AppBar(
      //     automaticallyImplyLeading: false,
      //     // leading: IconButton(
      //     //     onPressed: () {
      //     //       scaffoldKey.currentState!.openDrawer();
      //     //     },
      //     //     icon: Icon(Icons.donut_small_outlined)),
      //     elevation: 2,
      //     title: Align(
      //       alignment: Alignment.center,
      //       child: Row(
      //         children: [
      //           // Drawer(),
      //           Container(
      //               height: 100,
      //               width: 100,
      //               child: Image.asset('assets/favicon.png')),
      //           MaterialButton(
      //             onPressed: () {},
      //             child: Badge(
      //               backgroundColor: Colors.red,
      //               textColor: Colors.white,
      //               smallSize: 5,
      //               label: Text('3'),
      //               child: Icon(Icons.notifications),
      //             ),
      //           ),
      //         ],
      //       ),
      //     )),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(left: 8, right: 8),
              child: ListView(
                shrinkWrap: true,
                children: [
                  CarouselSlider(
                    items: [
                      const Custom_bannerbutton(
                        text1: 'The Best Organic Products Online',
                        buttonText: 'Shop Collection',
                        bottom: 20,
                        right: 10,
                        // onPressed: () {
                        //   // Navigator.pushNamed(context, 'login');
                        // },
                        image: 'assets/rice.png',
                        isButton2: false,
                      ),
                      Custom_bannerbutton(
                        text1: '100% ORGANIC FOODS',
                        buttonText: 'Order Now',
                        bottom: 40,
                        right: 50,
                        onPressed: () {
                          Navigator.pushNamed(context, 'home');
                        },
                        image: 'assets/lentil.png',
                        isButton2: true,
                        buttonText2: 'Explore Now',
                      ),
                      Custom_bannerbutton(
                          text1: '100% Natural Oraganic',
                          buttonText: "Shop Collection",
                          bottom: 20,
                          right: 135,
                          onPressed: () {
                            Navigator.pushNamed(context, 'home');
                          },
                          image: 'assets/mustard-oil.png',
                          isButton2: false)
                    ],
                    options: CarouselOptions(
                      height: 189,
                      enlargeCenterPage: false,
                      autoPlay: true,
                      // aspectRatio: 21 / 9,
                      autoPlayCurve: Curves.linear,
                      enableInfiniteScroll: true,
                      autoPlayAnimationDuration:
                          const Duration(milliseconds: 400),
                      viewportFraction: 0.99,
                    ),
                  ),
                ],
              ),
            ),
            Custom_Banner2(
                text: 'Lentil',
                text2: 'FRESH & CLEAN',
                text3: 'SHOP NOW',
                image: 'assets/masoor.png'),
            Custom_Banner2(
                text: 'House Oil',
                text2: 'FRESH & \nCLEAN WITH OUR \nPRODUCTS',
                text3: 'SHOP NOW',
                image: 'assets/rice1.png'),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Text(
                'ORANGIC & FRESH PRODUCTS',
                style: TextStyle(
                    color: ColorConstant.primaryColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
            ),
            Custom_Grid(
                height: 290,
                axisDirection: Axis.horizontal,
                crossAxisCount: 1,
                childAspectRatio: 12 / 7.3,
                mainAxisSpacing: 11,
                crossAxisSpacing: 10),
            Stack(
              children: [
                Image(
                  height: 340,
                  width: double.infinity,
                  image: AssetImage('assets/banner.png'),
                ),
                Positioned(
                  left: 190,
                  top: 270,
                  child: Text(
                    'FINEST QUALITY',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.white),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Stack(
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 9, right: 12, top: 8),
                      child: Image(
                        width: 165,
                        height: 170,
                        image: AssetImage('assets/offer.png'),
                      ),
                    ),
                    Positioned(
                      top: 70,
                      left: 30,
                      child: Container(
                        width: 120,
                        height: 70,
                        // color: Colors.black,
                        child: Text(
                          'GRAB THE BEST OFFER OF THIS WEEK',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                              color: Colors.white),
                          maxLines: 3,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    )
                  ],
                ),
                Stack(
                  children: [
                    Container(
                      padding: EdgeInsets.only(top: 8, right: 7),
                      child: Image(
                        width: 165,
                        height: 170,
                        image: AssetImage('assets/tainchin-rice.png'),
                      ),
                    ),
                    Positioned(
                      top: 70,
                      left: 30,
                      child: Container(
                        width: 100,
                        height: 60,
                        color: Colors.white70,
                        // color: Colors.black,
                        child: Text(
                          'TAICHIN RICE',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Colors.black),
                          maxLines: 3,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
            Row(
              children: [
                Stack(
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 9, right: 12, top: 8),
                      child: Image(
                        width: 165,
                        height: 170,
                        image: AssetImage('assets/mustardd-oil.png'),
                      ),
                    ),
                    Positioned(
                      top: 70,
                      left: 50,
                      child: Container(
                        width: 100,
                        height: 90,
                        // color: Colors.white70,
                        // color: Colors.black,
                        child: Text(
                          'FRESH. HEALTHY. ORGANIC.',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Colors.black),
                          maxLines: 3,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    )
                  ],
                ),
                Container(
                  padding: EdgeInsets.only(top: 8, right: 7),
                  child: Image(
                    width: 165,
                    height: 170,
                    image: AssetImage('assets/daal.png'),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12),
              child: Text(
                'OUR BEST PRODUCTS',
                style: TextStyle(
                    color: ColorConstant.primaryColor,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Custom_Tab_Bar(),
            Custom_Button_Homepage(
              height: 40,
              minWidth: 60,
              text: 'LOAD MORE',
              onPressed: () {
                Navigator.pushNamed(context, 'shop');
              },
            ),
            Divider(
              color: Colors.grey,
              thickness: 1,
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: Text(
                'POPULAR CATEGORIES',
                style: TextStyle(
                    color: ColorConstant.primaryColor,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              height: 240,

              // color: Colors.black,
              width: double.infinity,
              child: GridView.builder(
                  itemCount: data1.length,
                  scrollDirection: Axis.horizontal,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 0,
                      childAspectRatio: 12 / 9,
                      // mainAxisExtent: 2,
                      crossAxisCount: 1),
                  itemBuilder: (context, index) {
                    return Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color.fromARGB(255, 255, 249, 228),
                      ),

                      // color: Colors.red,

                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: CircleAvatar(
                              radius: 70,
                              backgroundImage: AssetImage(
                                data1[index]['image'],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(12),
                            child: Text(
                              data1[index]['name'],
                              style: TextStyle(
                                  color: ColorConstant.secondaryColor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            ),
                          ),
                        ],
                      ),
                    );
                  }),
            ),
            Container(
              padding: EdgeInsets.only(top: 12),
              width: double.infinity,
              height: 270,
              child: Stack(
                children: [
                  Image.asset(
                    'assets/parallax.png',
                    height: 250,
                    fit: BoxFit.cover,
                  ),
                  Positioned(
                    left: 40,
                    right: 40,
                    top: 25,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'SUPER DEALS OF THE WEEK',
                          style: TextStyle(
                              fontSize: 21, fontWeight: FontWeight.bold),
                          maxLines: 1,
                        ),
                        Text(
                          '50% OFF',
                          style: TextStyle(
                              color: Colors.amber,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 55),
                          child: Text(
                            '🌟 Dive into Nutritious Delights! Enjoy a Whopping 50% OFF on our Premium Lentils this Week! 🌱 Hurry, Grab Your Super Deal Now!',
                            style: TextStyle(fontSize: 12),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Custom_Button_Homepage(
                          text: 'SHOP NOW',
                          onPressed: () {
                            Navigator.pushNamed(context, 'shop');
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 200,
              // color: Colors.black,
              width: double.infinity,
              child: GridView.builder(
                itemCount: data2.length,
                scrollDirection: Axis.horizontal,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 0,
                    childAspectRatio: 12 / 10,
                    // mainAxisExtent: 2,
                    crossAxisCount: 1),
                itemBuilder: (context, index) {
                  return Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                    ),

                    // color: Colors.red,

                    child: Padding(
                      padding:
                          const EdgeInsets.only(top: 12, left: 12, right: 12),
                      child: Image(
                        image: AssetImage(
                          data2[index]['image'],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: 20,
            ),
            // DefaultTabController(
            //   initialIndex: 1,
            //   length: 3,
            //   child: TabBar(
            //     controller: _tabController,
            //     tabs: <Widget>[
            //       Tab(
            //         text: 'Lentil',
            //       ),
            //       Tab(
            //         text: 'Rice',
            //       ),
            //       Tab(
            //         text: 'Oil',
            //       ),
            //     ],
            //   ),
            // ),
            // TabBarView(
            //   controller: _tabController,
            //   children: <Widget>[
            //     Text('Hello'),
            //     Text('Arnav'),
            //     Text('Shrestha'),
            //   ],
            // ),
          ],
        ),
      ),
    );
  }
}
