import 'package:eccomerce/constant/color_constant.dart';
import 'package:eccomerce/helper/custom_button1.dart';
import 'package:eccomerce/helper/custom_social_button.dart';
import 'package:eccomerce/helper/custom_textfield1.dart';
import 'package:eccomerce/helper/custom_textfield2forpassword.dart';
import 'package:eccomerce/utils/validator.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        toolbarHeight: 0.0,
      ),
      body: SingleChildScrollView(
        // physics: BouncingScrollPhysics(),
        child: Form(
          key: _formKey,
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              SizedBox(
                height: 15,
              ),
              Image(
                height: 180,
                width: 180,
                image: AssetImage("assets/favicon.png"),
              ),
              SizedBox(
                height: 10,
              ),
              CustomTextField1(
                  fieldText: 'Full Name', prefixIcon: Icon(Icons.person)),
              CustomTextField1(
                validator: FormValidator.validateEmail,
                // validator: FormValidator.validateEmail,
                textInputType: TextInputType.emailAddress,
                fieldText: 'Email Address',
                prefixIcon: Icon(Icons.email),
              ),
              CustomTextField2(
                fieldText: 'Password',
                prefixIcon: const Icon(Icons.lock),
                // suffixIcon: IconButton(
                //   onPressed: () {},
                //   icon: Icon(Icons.visibility),
                // ),
              ),
              // CustomTextField1(
              //   validator: FormValidator.validatePassword,
              //   fieldText: 'Confirm Password',
              //   prefixIcon: const Icon(Icons.lock),
              //   suffixIcon: IconButton(
              //     onPressed: () {
              //       loginProvider.toggleIsShowPassword();
              //     },
              //     icon: Icon(
              //       loginProvider.isShowPassword
              //           ? Icons.visibility
              //           : Icons.visibility_off,
              //     ),
              //   ),
              // ),
              const SizedBox(
                height: 5,
              ),

              // Padding(
              //   padding: const EdgeInsets.all(8.0),
              //   child: MaterialButton(
              //     minWidth: double.infinity,
              //     color: Colors.amber,
              //     onPressed: () {},
              //     child: Text(
              //       'Signup',
              //       style: TextStyle(fontSize: 25),
              //     ),
              //   ),
              // ),
              // MaterialButton(
              //   textColor: Colors.white,
              //   color: Colors.blue,
              //   onPressed: () {},
              //   child: Row(
              //     children: [
              //       Icon(Icons.facebook),
              //       Center(
              //         child: Text(
              //           'Facebook',
              //           style: TextStyle(fontSize: 15),
              //           textAlign: TextAlign.center,
              //         ),
              //       ),
              //     ],
              //   ),
              //   height: 50,
              //   shape: RoundedRectangleBorder(
              //     borderRadius: BorderRadius.circular(10.0),
              //   ),
              // )
              CustomButton1(
                width: double.infinity,
                margin: EdgeInsets.all(12),
                textcolor: Colors.black,
                btnText: Text(
                  "Sign Up",
                  style:
                      TextStyle(color: ColorConstant.whiteColor, fontSize: 24),
                ),
                // marginSize: 10,
              ),

              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'login');
                },
                child: Text(
                  "Registered Customer?",
                  style: TextStyle(
                    color: ColorConstant.secondaryColor,
                    fontSize: 16,
                  ),
                ),
              ),
              const Text("- Or -"),
              SizedBox(
                height: 10,
              ),
              Text(
                'Sign up with social account',
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: EdgeInsets.only(
                    bottom: MediaQuery.sizeOf(context).height * 0.06),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CustomSocialButton(
                      // buttonText: 'Facebook',
                      buttonColor: Colors.blue.shade900,
                      onPressed: () {},
                      icon: FontAwesomeIcons.facebook,
                    ),
                    CustomSocialButton(
                      buttonColor: Colors.red,
                      onPressed: () {},
                      icon: FontAwesomeIcons.google,
                    ),
                    CustomSocialButton(
                      // buttonText: 'Facebook',
                      buttonColor: Colors.blue.shade400,
                      onPressed: () {},
                      icon: FontAwesomeIcons.twitter,
                    ),
                  ],
                ),
              ),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: [
              //     Text(
              //       'Don\'t have an acccount?',
              //       style: TextStyle(fontSize: 14, color: Colors.grey),
              //     ),
              //     TextButton(
              //       onPressed: () {
              //         Navigator.pushNamed(context, 'signup');
              //       },
              //       child: Text(
              //         'Sign Up',
              //         style: TextStyle(fontSize: 15),
              //       ),
              //     ),
              //   ],
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
