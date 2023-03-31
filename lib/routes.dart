import 'package:flutter/material.dart';

import 'screen/splashpage.dart';
import 'sign_in/signinpage.dart';

final Map<String, WidgetBuilder> routes = {
  SplashPage.routeName: (context) => const SplashPage(),
  SignInPage.routeName: (context) => const SignInPage(),
  // SingInPage.routeName :(context) => SingInPage(),
  // SingInPage.routeName :(context) => SingInPage(),
  // SingInPage.routeName :(context) => SingInPage(),
  // SingInPage.routeName :(context) => SingInPage(),
};
