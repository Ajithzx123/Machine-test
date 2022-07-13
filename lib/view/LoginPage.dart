import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:lottie/lottie.dart';
import 'package:machine/view/MainScreen.dart';
import 'package:machine/view/homePage.dart';
import 'package:machine/widgets/textformfield.dart';
import 'package:sizer/sizer.dart';
import 'package:url_launcher/url_launcher.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);

  final formkey = GlobalKey<FormState>();
  final isloading = false;
  TextEditingController UsernameController = TextEditingController();
  TextEditingController PasswordController = TextEditingController();

final Uri  _url = Uri.parse("https://google.com");
void _lauchUrl() async{
  if((await launchUrl(_url))) throw "could not launch$_url";
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                    padding: EdgeInsets.only(left: 10.w, right: 10.w),
                    child: Form(
                        key: formkey,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Center(
                              child: FadeInLeft(
                                child: LottieBuilder.network(
                                  "https://assets8.lottiefiles.com/packages/lf20_69HH48.json",
                                  height: 25.h,
                                ),
                              ),
                            ),
                            SizedBox(height: 4.h),
                            FadeInRight(
                              child: Text(
                                "Welcome....",
                                style: TextStyle(
                                    fontSize: 25.sp,
                                    fontWeight: FontWeight.w900),
                              ),
                            ),
                            SizedBox(height: 4.h),
                            FadeInLeft(
                              child: CustomText(
                                validator: ((uservalue) {
                                  if (uservalue.isEmpty) {
                                    return 'Please enter Username';
                                  }
                                  return null;
                                }),
                                textinputaction: TextInputAction.next,
                                textinputtype: TextInputType.name,
                                obscure: false,
                                controller: UsernameController,
                                hinttext: "Username",
                                labeltext: 'Username',
                              ),
                            ),
                            SizedBox(height: 2.h),
                            FadeInRight(
                              child: CustomText(
                                validator: ((passwordvalue) {
                                  if (passwordvalue.isEmpty) {
                                    return 'Please enter some text';
                                  }
                                  if (passwordvalue.length < 5) {
                                    return ' password Must be more than 4 charater';
                                  }
                                }),
                                textinputaction: TextInputAction.done,
                                textinputtype: TextInputType.name,
                                obscure: true,
                                controller: PasswordController,
                                hinttext: "Password",
                                labeltext: 'Password',
                              ),
                            ),
                            SizedBox(height: 1.h),
                            Align(
                              alignment: Alignment.topRight,
                              child: FadeInRight(
                                child: GestureDetector(
                                  onTap: () {
                                    _lauchUrl();

                                },
                                  child: Text(
                                    "Forgot Password",
                                    style: TextStyle(
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 5.h),
                            isloading == true
                                ? const Center(
                                    child: CircularProgressIndicator())
                                : Center(
                                    child: FadeInLeft(
                                      child: GestureDetector(
                                        onTap: () {
                                          if (formkey.currentState!
                                              .validate()) {
                                            Get.to( const MainScreen());
                                          }
                                        },
                                        child: Container(
                                          width: 30.w,
                                          height: 6.h,
                                          decoration: const BoxDecoration(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(20)),
                                            gradient: LinearGradient(colors: [
                                              Colors.blue,
                                              Colors.blueAccent
                                            ]),
                                          ),
                                          child: Center(
                                            child: Text(
                                              "Sign In",
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.w700,
                                                fontSize: 13.sp,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                          ],
                        ))),
              ],
            ),
          ),
        ));
  }
}
