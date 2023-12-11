import 'package:flutter/material.dart';

class WishlistPage extends StatelessWidget {
  const WishlistPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: 12,
          itemBuilder: (context, index) {
            return Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 16, right: 2),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image(
                        height: 90,
                        width: 120,
                        image: AssetImage('assets/oil.png'),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 15),
                              child: Text(
                                'Basmati Rice',
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 14),
                              ),
                            ),
                            Text(
                              '\$300',
                              style: TextStyle(color: Colors.amber),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 5),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(40)),
                          child: IconButton(
                            iconSize: 20,
                            color: Colors.white,
                            onPressed: () {},
                            icon: Icon(Icons.delete),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 12),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.amber,
                              borderRadius: BorderRadius.circular(40)),
                          child: IconButton(
                            // hoverColor: ColorConstant.primaryColor,
                            iconSize: 20,
                            onPressed: () {},
                            color: Colors.white,
                            icon: Icon(Icons.add_shopping_cart),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            );
          }),
    );
  }
}








// ListView.builder(
//             itemCount: 1,
//             itemBuilder: (context, index) {
//               return Container(
//                 height: 100,
//                 color: Colors.amber,
//                 width: double.infinity,
//                 child: Row(
//                   children: [
//                     Container(
//                       color: Colors.red,
//                       width: 80,
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.end,
//                         children: [
//                           Icon(Icons.delete),
//                           Container(
//                             decoration: BoxDecoration(
//                                 color: Colors.blue,
//                                 borderRadius: BorderRadius.circular(20)),
//                             child: Padding(
//                               padding: const EdgeInsets.only(left: 8),
//                               child: Icon(
//                                 Icons.notifications,
//                                 size: 25,
//                                 color: Colors.white,
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//               );
//             })