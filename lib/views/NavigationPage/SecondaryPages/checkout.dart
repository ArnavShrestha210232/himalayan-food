import 'package:eccomerce/constant/color_constant.dart';
import 'package:flutter/material.dart';

class Checkout extends StatelessWidget {
  const Checkout({super.key});

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
                  bottom: MediaQuery.sizeOf(context).height * 0.01),
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
                      'Checkout',
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
                    style: TextStyle(color: Colors.grey.shade400, fontSize: 15),
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
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 15),
              child: Card(
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
                    ListTile(
                      title: Text('Hello Arnav'),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, bottom: 8),
              child: Text(
                'Email',
                style: TextStyle(color: Colors.grey, fontSize: 15),
              ),
            ),
            Container(
              height: 40,
              padding: EdgeInsets.only(left: 18, right: 18),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'example@gmail.com',
                  hintStyle: TextStyle(fontSize: 12),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsetsDirectional.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Already have an account?',
                    style: TextStyle(color: Colors.black, fontSize: 15),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Log in',
                      style: TextStyle(color: Colors.blue, fontSize: 15),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, bottom: 8, top: 12),
              child: Text(
                'Full Name',
                style: TextStyle(color: Colors.grey, fontSize: 15),
              ),
            ),
            Container(
              height: 40,
              padding: EdgeInsets.only(left: 18, right: 18),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'Name',
                  hintStyle: TextStyle(fontSize: 12),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, bottom: 8, top: 12),
              child: Text(
                'Street Address',
                style: TextStyle(color: Colors.grey, fontSize: 15),
              ),
            ),
            Container(
              height: 40,
              padding: EdgeInsets.only(left: 18, right: 18),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'Address',
                  hintStyle: TextStyle(fontSize: 12),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, bottom: 8, top: 12),
              child: Text(
                'Apt.Suite.Blog(optional)',
                style: TextStyle(color: Colors.grey, fontSize: 15),
              ),
            ),
            Container(
              height: 40,
              padding: EdgeInsets.only(left: 18, right: 18),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'Unit no.',
                  hintStyle: TextStyle(fontSize: 12),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, bottom: 8, top: 12),
              child: Text(
                'Phone Number',
                style: TextStyle(color: Colors.grey, fontSize: 15),
              ),
            ),
            Container(
              height: 40,
              padding: EdgeInsets.only(left: 18, right: 18),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: '(XXX) XXX - XXXX',
                  hintStyle: TextStyle(fontSize: 12),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, bottom: 20),
              child: TextButton(
                onPressed: () {},
                child: Text(
                  'Another Number',
                  style: TextStyle(color: Colors.blue, fontSize: 15),
                ),
              ),
            ),
            Divider(
              thickness: 1,
              color: Colors.grey.shade300,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 10, bottom: 15),
              child: Text(
                'Shipping Method',
                style: TextStyle(color: Colors.grey, fontSize: 20),
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 15, right: 25),
                    height: 20,
                    width: 10,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border:
                          Border.all(color: Color.fromARGB(255, 87, 210, 255)),
                    ),
                  ),
                  Text(
                    'Free FedEx Ground Shipping',
                    style: TextStyle(fontSize: 15),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 70),
                    child: Text(
                      'Free',
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Flexible(
                    child: Container(
                      margin: EdgeInsets.only(left: 15, right: 25),
                      height: 20,
                      width: 10,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.grey),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 5,
                    child: Text(
                      'FedEx Ground Shipping. 2-3 business days after processing.',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Text(
                      '\$5.99',
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 15, right: 25),
                    height: 20,
                    width: 10,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.grey),
                    ),
                  ),
                  Text(
                    'FedEx One-Day Shipping',
                    maxLines: 2,
                    style: TextStyle(fontSize: 16),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 70),
                    child: Text(
                      '\$17.50',
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  child: TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      'Back',
                      style: TextStyle(color: Colors.grey, fontSize: 15),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 20),
                  height: 60,
                  width: 250,
                  padding: EdgeInsets.only(left: 50, top: 20),
                  child: MaterialButton(
                    height: 50,
                    elevation: 0,
                    onPressed: () {
                      Navigator.pushNamed(context, 'payment');
                      // Get.to(() => Payment());
                    },
                    color: ColorConstant.secondaryColor,
                    splashColor: ColorConstant.primaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      'Continue to Payment',
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
