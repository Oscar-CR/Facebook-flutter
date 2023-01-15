import 'package:facebook_ui/constants/strings.dart';
import 'package:flutter/material.dart';

class HeaderLogin extends StatefulWidget {
  const HeaderLogin({Key? key}) : super(key: key);

  @override
  State<HeaderLogin> createState() => _HeaderLoginState();
}

class _HeaderLoginState extends State<HeaderLogin> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        height: 200,
        child: Image.asset(ImageRoutes.globalRoute + ImageRoutes.loginHeader));
  }
}
