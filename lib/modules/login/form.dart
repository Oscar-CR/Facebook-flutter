import 'package:facebook_ui/constants/colors.dart';
import 'package:facebook_ui/constants/strings.dart';
import 'package:flutter/material.dart';

class FormLogin extends StatefulWidget {
  const FormLogin({Key? key}) : super(key: key);

  @override
  State<FormLogin> createState() => _FormLoginState();
}

class _FormLoginState extends State<FormLogin> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, top: 32),
      child: SizedBox(
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.30,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Padding(padding: EdgeInsets.only(top: 60)),
                  SizedBox(
                    width: 60,
                    height: 60,
                    child:
                        Image.asset(ImageRoutes.globalRoute + ImageRoutes.logo),
                  )
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey,
                  width: 1.0,
                ),
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  style: TextStyle(
                    color: Colors.grey[800],
                  ),
                  decoration: InputDecoration(
                    labelText: StringsApp.loginInputEmail,
                    labelStyle: TextStyle(
                      color: Colors.grey[600],
                    ),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
            const Padding(padding: EdgeInsets.only(top: 20)),
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey,
                  width: 1.0,
                ),
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  obscureText: true,
                  style: TextStyle(
                    color: Colors.grey[800],
                  ),
                  decoration: InputDecoration(
                    labelText: StringsApp.loginInputPassword,
                    labelStyle: TextStyle(
                      color: Colors.grey[600],
                    ),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
            const Padding(padding: EdgeInsets.only(top: 20)),
            SizedBox(
                height: 50,
                width: double.infinity,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        backgroundColor: FacebookColors.primaryColor,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 0, vertical: 0),
                        textStyle: const TextStyle(fontSize: 16)),
                    onPressed: () {},
                    child: Text(
                      StringsApp.loginButtonLogin,
                    ))),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Text(StringsApp.loginForgotPassword,
                  style: const TextStyle(
                      fontWeight: FontWeight.w600, fontSize: 16)),
            ),
            const Padding(padding: EdgeInsets.only(top: 40)),
            Align(
              alignment: Alignment
                  .bottomCenter,
              child: Container(
                  height: MediaQuery.of(context).size.height *
                      0.25,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [

                      SizedBox(
                          height: 50,
                          width: double.infinity,
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                elevation: 0,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30),
                                    side: const BorderSide(
                                      color: FacebookColors.facebookBlue,
                                      width: 1,
                                    ),
                                  ),
                                  backgroundColor: Colors.white,
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 0, vertical: 0),
                                  textStyle: const TextStyle(fontSize: 16)),
                              onPressed: () {},
                              child: Text(
                                StringsApp.loginCreateAccount,
                                style: const TextStyle(
                                    color: FacebookColors.facebookBlue,
                                    fontWeight: FontWeight.w600),
                              ))),

                      Padding(
                        padding: const EdgeInsets.only(top: 16),
                        child: Text(StringsApp.loginLogo, style: TextStyle(color: Colors.grey[600], fontSize: 16, fontWeight: FontWeight.w600),),
                      )
                    ],
                  )),
            )
          ],
        ),
      ),
    );
  }
}
