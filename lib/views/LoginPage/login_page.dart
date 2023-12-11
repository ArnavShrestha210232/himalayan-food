import 'package:eccomerce/constant/color_constant.dart';
import 'package:eccomerce/helper/custom_button1.dart';
import 'package:eccomerce/helper/custom_social_button.dart';
import 'package:eccomerce/helper/custom_textfield1.dart';
import 'package:eccomerce/helper/custom_textfield2forpassword.dart';
import 'package:eccomerce/provider/password_provider.dart';
import 'package:eccomerce/utils/validator.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // @override
  // void initState() {
  //   WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
  //     Provider.of<PasswordProvider>(context, listen: false);
  //   });
  //   super.initState();
  // }

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 0.0,
      ),
      body: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
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
                height: 20,
              ),
              CustomTextField1(
                fieldText: 'Email',
                prefixIcon: Icon(Icons.email),
                validator: FormValidator.validateEmail,
              ),
              CustomTextField2(
                fieldText: 'Password',
                prefixIcon: const Icon(Icons.lock),
                // suffixIcon: Icons.visibility,
                validator: FormValidator.validatePassword,
              ),
              const SizedBox(
                height: 10,
              ),
              Consumer<PasswordProvider>(
                builder: (context, provider, child) => CustomButton1(
                  onPressed: () => provider.login().then(
                        (value) => Navigator.pushNamed(context, 'bottomnavbar'),
                      ),
                  margin: const EdgeInsets.all(12),
                  textcolor: Colors.black,
                  btnText: provider.isLogginging
                      ? CircularProgressIndicator(
                          color: ColorConstant.whiteColor,
                        )
                      : Text(
                          "Login",
                          style: TextStyle(
                            color: ColorConstant.whiteColor,
                            fontSize: 24,
                          ),
                        ),
                  // marginSize: 10,
                  width: double.infinity,
                ),
              ),
              // CustomButton(
              //   buttonText: loginProvider.isLogging
              //       ? CircularProgressIndicator(
              //           color: ColorConstant.whiteColor,
              //         )
              //       : Text(
              //           'Login',
              //           style: TextStyle(
              //             color: ColorConstant.whiteColor,
              //             fontSize: 24,
              //           ),
              //         ),
              //   onPressed: () {
              //     // if (_formKey.currentState!.validate()) {
              //     // Navigator.pushNamed(context, 'home');
              //     Navigator.push(context,
              //         MaterialPageRoute(builder: (context) => HomePage()));
              //     // }
              //   },
              //   width: 0.95,
              // ),
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'forgot');
                },
                child: Text(
                  "Forgot your password?",
                  style: TextStyle(
                    color: ColorConstant.secondaryColor,
                    fontSize: 16,
                  ),
                ),
              ),
              const Text("- Or -"),
              SizedBox(height: 10),
              Text(
                'Sign in with social account',
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
              SizedBox(
                height: 10,
              ),

              Row(
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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Don\'t have an acccount?',
                    style: TextStyle(fontSize: 14, color: Colors.grey),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, 'signup');
                    },
                    child: Text(
                      'Sign Up',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ],
              ),

              // MaterialButton(
              //   height: 40,
              //   minWidth: 40,
              //   hoverColor: Colors.amber,
              //   hoverElevation: 0,
              //   color: Colors.blue.shade400,
              //   textColor: ColorConstant.whiteColor,
              //   onPressed: () {},
              //   child: Row(
              //     children: [
              //       Icon(Icons.facebook),
              //       Text(
              //         'Facebook',
              //         textAlign: TextAlign.end,
              //       ),
              //     ],
              //   ),
              // )
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
            ],
          ),
        ),
      ),
    );
  }
}
