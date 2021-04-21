import 'package:art/views/screens/splash.dart';
import 'package:flutter/material.dart';
import 'views/screens/Artist/Artconfirmation.dart';
import 'views/screens/Artist/artist_login.dart';
import 'views/screens/Artist/profile_update.dart';
import 'views/screens/Customer/confirmation.dart';
import 'views/screens/Customer/settings.dart';
import 'views/screens/artist/artist_sign_up.dart';
import 'views/screens/artist/artist_signup_detail.dart';
import 'views/screens/country_select.dart';
import 'views/screens/customer/art_detail.dart';
import 'views/screens/customer/customer_login.dart';
import 'views/screens/customer/customer_sign_up.dart';
import 'views/screens/customer/customer_signup_detail.dart';
import 'views/screens/rest_Password.dart';
import 'views/screens/select_user.dart';
import 'views/screens/visitor/visitor_bottom_bar.dart';
import 'views/widgets/artist_bottom_bar.dart';
import 'views/widgets/customer_bottom_bar.dart';

class App extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(),
      home: SplashScreen(),
      routes: routes,
    );
  }

  var routes = <String, WidgetBuilder>{
    "/countrySelect": (BuildContext context) => CountrySelect(),
    "/signIn": (BuildContext context) => CustomerLogin(),
    "/forgotPassword": (BuildContext context) => RestPassword(),
    "/signUp": (BuildContext context) => CustomerSignUp(),
    "/customerSignUpDetails": (BuildContext context) => CustomerSignUpDetail(),
    "/customerBottomBar": (BuildContext context) => CustomerBottomBar(),
    "/selectUser": (BuildContext context) => SelectUser(),
    "/artistLogin": (BuildContext context) => ArtistLogin(),
    "/customerLogin": (BuildContext context) => CustomerLogin(),
    "/visitorBottom": (BuildContext context) => VisitorBottomBar(),

    "/artistBottomBar": (BuildContext context) => ArtistBottomBar(),
    "/customerconfrimation": (BuildContext context) => NumConfirm(),
    "/artConfirm": (BuildContext context) => ArtNumConfirm(),
    "/artistSignUp": (BuildContext context) => ArtistSignUp(),
    "/artistSignUpDetails": (BuildContext context) => ArtistSignUpDetail(),
    "/artDetails": (BuildContext context) => ArtDetail(),
    "/settings": (BuildContext context) => Settings(),
    // ignore: equal_keys_in_map
    "/selectUser": (BuildContext context) => SelectUser(),
    "/SellerProfileUpdate": (BuildContext context) => sellerProfileUpdate(),
  };
}
