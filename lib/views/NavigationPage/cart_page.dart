import 'package:eccomerce/constant/color_constant.dart';
import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.only(left: 20, top: 20),
              child: Text(
                'Your Cart',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.grey,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 22, top: 20),
                  decoration: BoxDecoration(color: Colors.grey),
                  child: Image.asset(
                    'assets/oil.png',
                    height: 60,
                    width: 50,
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 5, top: 20),
                        child: Text(
                          'FRANCE AUTHENTIC JERSEY 2018 (L) (HOME)',
                          maxLines: 3,
                          // overflow: TextOverflow.ellipsis,
                          style: TextStyle(color: Colors.black, fontSize: 16),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8, top: 8),
                        child: Text(
                          'NIKE',
                          style: TextStyle(color: Colors.grey, fontSize: 15),
                        ),
                      ),
                    ],
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.delete_rounded,
                    color: Colors.grey,
                  ),
                ),
                // Text(
                //   'NIKE',
                //   style: TextStyle(color: Colors.grey, fontSize: 20),
                // ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(
                    left: 35,
                  ),
                  child: Text(
                    'Qty',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                /*Padding(    // For Toggle Selection
                  padding: const EdgeInsets.only(left: 20, top: 12),
                  child: ToggleButtons(
                    direction: vertical ? Axis.vertical : Axis.horizontal,
                    onPressed: (int index) {
                      setState(() {
                        // The button that is tapped is set to true, and the others to false.
                        for (int i = 0; i < _selectedInde.length; i++) {
                          _selectedInde[i] = i == index;
                        }
                      });
                    },
                    borderRadius: const BorderRadius.all(Radius.circular(8)),
                    selectedBorderColor: Colors.white,
                    selectedColor: Colors.white,
                    fillColor: Colors.grey,
                    color: Colors.grey,
                    constraints: const BoxConstraints(
                      minHeight: 40,
                      minWidth: 50,
                    ),
                    isSelected: _selectedInde,
                    children: Inde,
                  ),
                ),*/
                Container(
                  margin: EdgeInsets.only(left: 20),
                  height: 40,
                  width: 45,
                  color: Colors.grey.shade100,
                  child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.remove,
                        size: 25,
                        color: Colors.grey.shade400,
                      )),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    '1',
                    style: TextStyle(color: Colors.black, fontSize: 25),
                  ),
                ),
                Container(
                  height: 40,
                  width: 45,
                  color: Colors.grey.shade300,
                  child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.add,
                        size: 25,
                        color: Colors.grey.shade500,
                      )),
                ),
                Container(
                  margin: EdgeInsets.only(left: 85),
                  child: Text(
                    '\$165',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            const Divider(
              thickness: 2,
              indent: 20,
              endIndent: 20,
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 22, top: 20),
                  // decoration: BoxDecoration(color: Colors.grey),
                  child: Image.asset(
                    'assets/oil.png',
                    height: 80,
                    width: 60,
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 5, top: 20),
                        child: Text(
                          'MEXICO AUTHENTIC JERSEY 2018 (M) (HOME)',
                          maxLines: 3,
                          // overflow: TextOverflow.ellipsis,
                          style: TextStyle(color: Colors.black, fontSize: 16),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8, top: 8),
                        child: Text(
                          'ADIDAS',
                          style: TextStyle(color: Colors.grey, fontSize: 15),
                        ),
                      ),
                    ],
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.delete_rounded,
                    color: Colors.grey,
                  ),
                ),
                // Text(
                //   'NIKE',
                //   style: TextStyle(color: Colors.grey, fontSize: 20),
                // ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 35),
                  child: Text(
                    'Qty',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 20),
                  height: 40,
                  width: 45,
                  color: Colors.grey.shade100,
                  child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.remove,
                        size: 25,
                        color: Colors.grey.shade400,
                      )),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    '1',
                    style: TextStyle(color: Colors.black, fontSize: 25),
                  ),
                ),
                Container(
                  height: 40,
                  width: 45,
                  color: Colors.grey.shade300,
                  child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.add,
                        size: 25,
                        color: Colors.grey.shade500,
                      )),
                ),
                Container(
                  margin: EdgeInsets.only(left: 85),
                  child: Text(
                    '\$165',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.only(left: 20, right: 20),
              height: 170,
              width: 360,
              color: Colors.grey.shade200,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 20, left: 12),
                        child: Text(
                          'Subtotal',
                          style: TextStyle(color: Colors.grey, fontSize: 15),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 12, top: 20),
                        child: Text(
                          '\$685',
                          style: TextStyle(color: Colors.grey, fontSize: 15),
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 20, left: 12),
                        child: Text(
                          'Shipping',
                          style: TextStyle(color: Colors.grey, fontSize: 15),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 12, top: 20),
                        child: Text(
                          '---',
                          style: TextStyle(color: Colors.grey, fontSize: 15),
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 20, left: 12),
                        child: Text(
                          'Taxes',
                          style: TextStyle(color: Colors.grey, fontSize: 15),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 12, top: 20),
                        child: Text(
                          '---',
                          style: TextStyle(color: Colors.grey, fontSize: 15),
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 20, left: 12),
                        child: Text(
                          'Total',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 15),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 12, top: 20),
                        child: Text(
                          '\$685',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text(
                          'BACK',
                          style: TextStyle(color: Colors.grey, fontSize: 15),
                        )),
                  ),
                  Container(
                    height: 60,
                    width: 270,
                    padding: EdgeInsets.only(left: 50, top: 20, right: 8),
                    child: MaterialButton(
                      height: 50,
                      elevation: 0,
                      onPressed: () {
                        Navigator.pushNamed(context, 'checkout');
                      },
                      color: ColorConstant.secondaryColor,
                      splashColor: ColorConstant.primaryColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text(
                        'CONTINUE TO CHECKOUT',
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                    ),
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
