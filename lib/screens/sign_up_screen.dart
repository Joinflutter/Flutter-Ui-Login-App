import 'package:flutter/material.dart';
import 'package:icofont_flutter/icofont_flutter.dart';
import 'package:login_ui/widgets/build_form_field.dart';

import '../constant.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Column(
        children: [
          Expanded(
            flex: 10,
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(
                horizontal: size.width * 0.05,
              ),
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: size.height * 0.12),
                    RichText(
                      text: TextSpan(
                        text: 'Hello ',
                        style: TextStyle(
                          color: kTextColor,
                          fontWeight: FontWeight.w400,
                          fontSize: size.width * 0.1,
                        ),
                        children: [
                          TextSpan(
                            text: 'Beautiful,\n',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text:
                                'Enter yout information below or,\nlogin with a social account',
                            style: TextStyle(
                              fontSize: size.width * 0.04,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: size.height * 0.08),
                    BuildFormField(
                      lableText: 'Email address',
                    ),
                    SizedBox(height: size.height * 0.02),
                    BuildFormField(
                      lableText: 'Password',
                    ),
                    SizedBox(height: size.height * 0.02),
                    BuildFormField(
                      lableText: 'Password again',
                    ),
                    SizedBox(height: size.height * 0.02),
                    Row(
                      children: [
                        Icon(
                          IcoFontIcons.facebook,
                          size: 20,
                        ),
                        SizedBox(width: size.width * 0.02),
                        Icon(
                          IcoFontIcons.googlePlus,
                          size: 28,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.centerRight,
              children: [
                Container(
                  color: kBottomColor,
                ),
                Positioned(
                  right: 20,
                  top: -30,
                  child: Container(
                    height: 55,
                    width: 90,
                    decoration: BoxDecoration(
                      color: kButton2Color,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Icon(
                      IcoFontIcons.longArrowRight,
                      size: 40,
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
