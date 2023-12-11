import 'package:eccomerce/constant/color_constant.dart';
import 'package:eccomerce/helper/custom_button1.dart';
import 'package:eccomerce/helper/custom_textfield1.dart';
import 'package:eccomerce/utils/validator.dart';
import 'package:flutter/material.dart';

class ForgotPage extends StatelessWidget {
  const ForgotPage({super.key});

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        // toolbarHeight: ,
        leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: Icon(Icons.arrow_back_ios)),
      ),
      body: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: Form(
          key: _formKey,
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              SizedBox(
                height: 0,
              ),
              Image(
                height: 180,
                width: 180,
                image: AssetImage("assets/favicon.png"),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Text(
                  'Please enter your email address below. You will receive a link to reset your password.',
                  style: TextStyle(color: Colors.grey, fontSize: 16),
                  textAlign: TextAlign.center,
                ),
              ),
              CustomTextField1(
                fieldText: 'Email',
                prefixIcon: Icon(Icons.email),
                validator: FormValidator.validateEmail,
              ),
              const SizedBox(
                height: 10,
              ),
              CustomButton1(
                margin: EdgeInsets.all(12),
                textcolor: Colors.black,
                btnText: Text(
                  'Reset Password',
                  style:
                      TextStyle(color: ColorConstant.whiteColor, fontSize: 24),
                ),
                // marginSize: 10,
                width: double.infinity,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
