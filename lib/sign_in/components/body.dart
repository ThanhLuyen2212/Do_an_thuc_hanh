import 'package:bai_tap_thuc_hanh/sign_in/components/signin_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
      child: Container(
        child: Column(
          children: [
            headerScreen(context),
            const SigninForm(),
            footerScreen(context),
          ],
        ),
      ),
    ));
  }
}

Widget headerScreen(BuildContext context) {
  return Container(
    width: MediaQuery.of(context).size.width,
    height: MediaQuery.of(context).size.height * 0.2,
    alignment: Alignment.bottomRight,
    child: Image.network(
        'https://i.9mobi.vn/cf/images/2015/03/nkk/hinh-dep-12.jpg'),
  );
}

Widget footerScreen(BuildContext context) {
  return Container(
    width: MediaQuery.of(context).size.width,
    alignment: Alignment.bottomLeft,
    child: Image.network(
        'https://i.9mobi.vn/cf/images/2015/03/nkk/hinh-dep-12.jpg'),
  );
}
