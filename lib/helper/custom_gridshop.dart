import 'package:eccomerce/helper/custom_button_homepage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Custom_Grid_Shop extends StatelessWidget {
  final Axis axisDirection;
  final int crossAxisCount;
  final double childAspectRatio;
  final double mainAxisSpacing;
  final double crossAxisSpacing;
  final double? height;

  Custom_Grid_Shop(
      {super.key,
      required this.axisDirection,
      required this.crossAxisCount,
      required this.childAspectRatio,
      required this.mainAxisSpacing,
      required this.crossAxisSpacing,
      this.height});
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
      'image': 'assets/mustard-oil.png',
      'name': "Mustard Oil",
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
      'image': 'assets/mustard-oil.png',
      'name': "Mustard Oil",
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
      'image': 'assets/mustard-oil.png',
      'name': "Mustard Oil",
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
      'image': 'assets/mustard-oil.png',
      'name': "Mustard Oil",
      'price': '\$400',
      'discount price': '\$322',
      'subtitle': 'Local Rice',
      'star': Icons.star,
      'starless': Icons.star_border,
    },

    // {
    //   'image': 'assets/taichin-rice.png',
    //   'name': "Taichin Rice",
    //   'price': '\$400',
    //   'discount price': '\$322',
    //   'subtitle': 'Local Rice',
    //   'star': Icons.star,
    //   'starless': Icons.star_border,
    // },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      height: height,
      // decoration: BoxDecoration(
      //     color: Colors.amber, borderRadius: BorderRadius.circular(20)),
      width: double.infinity,
      child: GridView.builder(
          scrollDirection: axisDirection,
          // scrollDirection: axisDirection!,
          itemCount: data.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: crossAxisCount,
              crossAxisSpacing: crossAxisSpacing,
              mainAxisSpacing: mainAxisSpacing,
              childAspectRatio: childAspectRatio),
          itemBuilder: (context, index) {
            return Container(
              decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(15)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Image(image: data[index]['image']),
                  // Image(
                  //   image: AssetImage(data[index]['image']),
                  // ),
                  ClipRRect(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15)),
                    child: Image(
                        height: 130,
                        width: 170,
                        fit: BoxFit.cover,
                        image: AssetImage(data[index]['image'])),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          data[index]['name'],
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          data[index]['subtitle'],
                          style: TextStyle(color: Colors.grey),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              data[index]['price'].toString(),
                              style: TextStyle(
                                  decoration: TextDecoration.lineThrough,
                                  color: Colors.grey),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 5),
                              child: Text(
                                data[index]['discount price'].toString(),
                                style: TextStyle(color: Colors.amber),
                                // style: TextStyle(
                                //     decoration: TextDecoration.lineThrough),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  RatingBar.builder(
                      itemSize: 25,
                      initialRating: 3.5,
                      minRating: 1,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                      itemBuilder: (context, _) => Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                      onRatingUpdate: (rating) {
                        print(rating);
                      }),

                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Custom_Button_Homepage(
                      text: 'ADD TO CART',
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            );
          }),
    );
  }
}
