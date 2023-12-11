import 'package:eccomerce/constant/color_constant.dart';
import 'package:eccomerce/helper/custom_profile.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Align(
              alignment: Alignment.center,
              child: CircleAvatar(
                radius: 70,
                backgroundImage: AssetImage('assets/dog.jpeg'),
              ),
            ),
          ),
          Center(
            child: Text(
              'Ren',
              maxLines: 2,
            ),
          ),
          Center(
            child: Text(
              'ren300@gmail.com',
              style: TextStyle(fontSize: 16),
            ),
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25),
                  topRight: Radius.circular(25),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Row(
                      children: [
                        Custom_Profile(
                          text: 'Date of Birth',
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 50),
                          child: Custom_Profile2(text1: '2078/11/01'),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Custom_Profile(text: 'Gender'),
                      Padding(
                        padding: const EdgeInsets.only(left: 90),
                        child: Custom_Profile2(text1: 'Male'),
                      )
                    ],
                  ),
                  // Row(
                  //   children: [
                  //     Custom_Profile(text: 'Marital Status'),
                  //     Padding(
                  //       padding: const EdgeInsets.only(left: 40),
                  //       child: Custom_Profile2(text1: 'Unmarried'),
                  //     )
                  //   ],
                  // ),
                  Row(
                    children: [
                      Custom_Profile(text: 'Phone Number'),
                      Padding(
                        padding: const EdgeInsets.only(left: 35),
                        child: Custom_Profile2(text1: '9800003213'),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Custom_Profile(text: 'Email'),
                      Padding(
                        padding: const EdgeInsets.only(left: 100),
                        child: Custom_Profile2(text1: 'ren300@gmail.com'),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Custom_Profile(text: 'Temporary Address'),
                      Custom_Profile2(text1: 'Dhapakhel, Lalitpur'),
                    ],
                  ),
                  Row(
                    children: [
                      Custom_Profile(text: 'Permanent Address'),
                      Custom_Profile2(text1: 'Dhapakhel, Lalitpur'),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 70, vertical: 20),
                    child: MaterialButton(
                      height: 40,
                      minWidth: double.infinity,
                      color: ColorConstant.secondaryColor,
                      splashColor: ColorConstant.primaryColor,
                      onPressed: () {
                        Navigator.pushNamed(context, 'login');
                      },
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text(
                        'Logout',
                        style: TextStyle(
                          color: ColorConstant.whiteColor,
                          fontSize: 17,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
