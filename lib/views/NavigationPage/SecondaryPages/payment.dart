import 'package:eccomerce/constant/color_constant.dart';
import 'package:eccomerce/helper/custom_button_homepage.dart';
import 'package:flutter/material.dart';

class Payment extends StatelessWidget {
  const Payment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(
                left: MediaQuery.sizeOf(context).width * 0.01,
                top: MediaQuery.sizeOf(context).height * 0.03,
                bottom: MediaQuery.sizeOf(context).width * 0.01,
              ),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.arrow_back),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: Text(
                      'Payment',
                      style: TextStyle(
                        color: ColorConstant.blackColor,
                        fontSize: 25,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    height: 30,
                    child: CircleAvatar(
                        backgroundColor: Color.fromARGB(255, 41, 194, 166),
                        child: Icon(
                          Icons.check,
                          color: Colors.white,
                        )),
                  ),
                  Expanded(
                    child: Divider(
                      thickness: 2,
                      color: Colors.grey,
                    ),
                  ),
                  Container(
                    height: 30,
                    child: CircleAvatar(
                      backgroundColor: Color.fromARGB(255, 41, 194, 166),
                      child: Text(
                        '1',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Divider(
                      thickness: 2,
                      color: Colors.grey,
                    ),
                  ),
                  Container(
                    height: 30,
                    child: CircleAvatar(
                      backgroundColor: Color.fromARGB(255, 194, 194, 194),
                      child: Text(
                        '1',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Text(
                    'Shipping',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 75),
                  child: Text(
                    'Payment',
                    style: TextStyle(color: Colors.black, fontSize: 15),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 90),
                  child: Text(
                    'Review',
                    style: TextStyle(color: Colors.grey.shade400, fontSize: 15),
                  ),
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.sizeOf(context).width * 0.04,
                  vertical: MediaQuery.sizeOf(context).height * 0.02),
              child: Card(
                elevation: 3,
                child: ExpansionTile(
                  collapsedShape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  backgroundColor: Colors.grey.shade100,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                    side: BorderSide(color: Colors.transparent),
                  ),
                  collapsedBackgroundColor: Colors.grey.shade100,
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Show cart details',
                        style: TextStyle(color: Colors.blue),
                      ),
                      Text(
                        '\$165',
                        style: TextStyle(color: Colors.blue),
                      ),
                    ],
                  ),
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 22, top: 20),
                              decoration: BoxDecoration(color: Colors.grey),
                              child: Image.asset(
                                'assets/lentil.png',
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
                                    padding:
                                        const EdgeInsets.only(left: 5, top: 12),
                                    child: Text(
                                      'FRANCE AUTHENTIC JERSEY 2018 (L) (HOME)',
                                      maxLines: 3,
                                      // overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 16),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8),
                                    child: Text(
                                      'NIKE',
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 15),
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
                                    fontSize: 15,
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
                              margin: EdgeInsets.symmetric(horizontal: 10),
                              child: Text(
                                '1',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 20),
                              ),
                            ),
                            Container(
                              height: 35,
                              width: 40,
                              color: Colors.grey.shade300,
                              child: IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.add,
                                    size: 20,
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
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 20, top: 12, bottom: 5),
                          child: Text(
                            'Discount Code',
                            style: TextStyle(fontSize: 15, color: Colors.grey),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 20),
                          child: Row(
                            children: [
                              Container(
                                height: 40,
                                width: 210,
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    contentPadding: EdgeInsets.symmetric(
                                        horizontal:
                                            MediaQuery.sizeOf(context).width *
                                                0.2),
                                    prefixIcon:
                                        Icon(Icons.card_giftcard_outlined),
                                    hintStyle: TextStyle(fontSize: 15),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.grey.shade400),
                                      borderRadius: BorderRadius.circular(0),
                                    ),
                                    border: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.grey.shade300),
                                      borderRadius: BorderRadius.circular(0),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                height: 40,
                                width: 80,
                                margin: EdgeInsets.only(left: 0),
                                child: MaterialButton(
                                  elevation: 0,
                                  onPressed: () {},
                                  color: Colors.grey.shade400,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(0),
                                      side: BorderSide(
                                          color: Colors.grey.shade400)),
                                  child: Text(
                                    'APPLY',
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.black),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 20, right: 20),
                          height: 170,
                          width: 360,
                          // color: Colors.grey.shade200,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 20, left: 12),
                                    child: Text(
                                      'Subtotal',
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 15),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        right: 12, top: 20),
                                    child: Text(
                                      '\$165',
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 15),
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 20, left: 12),
                                    child: Text(
                                      'Shipping',
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 15),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        right: 12, top: 20),
                                    child: Text(
                                      'FREE',
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 15),
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 20, left: 12),
                                    child: Text(
                                      'Taxes',
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 15),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        right: 12, top: 20),
                                    child: Text(
                                      '\$11.55',
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 15),
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 20, left: 12),
                                    child: Text(
                                      'Total',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        right: 12, top: 20),
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
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 20, bottom: 12),
              child: Text(
                'Credit or Debit Card Details',
                style: TextStyle(
                  fontSize: 17,
                  color: Colors.grey.shade600,
                ),
              ),
            ),
            Container(
              height: 60,
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: TextFormField(
                autofocus: true,
                decoration: InputDecoration(
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 16, horizontal: 15),
                  labelText: 'Credit or Debit Card No.',
                  labelStyle: TextStyle(color: Colors.grey.shade600),
                  alignLabelWithHint: false,
                  prefixIcon: Padding(
                    padding: const EdgeInsets.only(
                      left: 8.0,
                      right: 6,
                    ),
                    child: Image(
                      image: AssetImage('assets/visa.png'),
                    ),
                  ),
                  // prefix: Image(image: AssetImage('images/visa.png')),\
                  hintText: 'XXXX - XXXX - XXXX',
                  focusedBorder:
                      OutlineInputBorder(borderSide: BorderSide(width: 1)),
                  hintStyle: TextStyle(fontSize: 18),
                  // enabledBorder: OutlineInputBorder(
                  //   borderSide: BorderSide(color: Colors.black),
                  // ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                ),
              ),
            ),

            // Container(
            //   height: 80,
            //   padding: EdgeInsets.only(left: 18, right: 18),
            //   child: TextFormField(
            //     decoration: InputDecoration(
            //       // prefixIcon: Icon(Icons.mail),
            //       prefix: ImageIcon(
            //         AssetImage('images/visa.png'),
            //         size: 300,
            //       ),
            //       hintText: 'example@gmail.com',
            //       hintStyle: TextStyle(fontSize: 12),
            //       enabledBorder: OutlineInputBorder(
            //         borderSide: BorderSide(color: Colors.grey),
            //       ),
            //       focusedBorder: OutlineInputBorder(
            //         borderSide: BorderSide(
            //           color: Colors.grey,
            //         ),
            //       ),
            //     ),
            //   ),
            // ),
            Padding(
              padding: const EdgeInsets.only(
                left: 20,
              ),
              child: Text(
                'Enter card number, expiration date and CVV number',
                style: TextStyle(fontSize: 13, color: Colors.grey),
              ),
            ),
            Container(
              height: MediaQuery.sizeOf(context).height * 0.08,
              width: MediaQuery.sizeOf(context).width * 0.90,
              margin: EdgeInsets.only(
                left: MediaQuery.sizeOf(context).width * 0.05,
                right: MediaQuery.sizeOf(context).width * 0.05,
                top: MediaQuery.sizeOf(context).height * 0.03,
              ),
              child: MaterialButton(
                elevation: 0,
                onPressed: () {},
                color: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                    side: BorderSide(color: Colors.black)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 50,
                      child: Image(
                        image: AssetImage('assets/paypal.png'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Text(
                        'PAYPAL',
                        style: TextStyle(fontSize: 15, color: Colors.black),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: MediaQuery.sizeOf(context).height * 0.08,
              width: MediaQuery.sizeOf(context).width * 0.90,
              margin: EdgeInsets.symmetric(
                  horizontal: MediaQuery.sizeOf(context).width * 0.05,
                  vertical: MediaQuery.sizeOf(context).height * 0.03),
              child: MaterialButton(
                elevation: 0,
                onPressed: () {},
                color: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                    side: BorderSide(color: Colors.black)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 70,
                      child: Image(
                        image: AssetImage('assets/apple.png'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text(
                        'APPLE PAY',
                        style: TextStyle(fontSize: 15, color: Colors.black),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: MediaQuery.sizeOf(context).width * 0.02,
                  right: MediaQuery.sizeOf(context).width * 0.06),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      'Back',
                      style: TextStyle(color: Colors.grey, fontSize: 15),
                    ),
                  ),
                  Custom_Button_Homepage(
                    height: 40,
                    text: 'Continue to Review',
                    fontSize: 18,
                    onPressed: () {
                      Navigator.pushNamed(context, 'review');
                    },
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
