import 'package:flutter/material.dart';
import 'package:folio/sections/about/about.dart';
import 'package:folio/sections/contact/contact.dart';
import 'package:folio/sections/home/home.dart';
import 'package:folio/sections/portfolio/portfolio.dart';
import 'package:folio/sections/services/services.dart';
import 'package:folio/widget/footer.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class StaticUtils {
  static const String hi = 'assets/hi.gif';

  // photos
  static const String mobilePhoto = 'assets/photos/mobile.png';
  static const String coloredPhoto = 'assets/photos/colored.png';
  static const String blackWhitePhoto = 'assets/photos/black-white.png';

  // work
  static const String dsc = 'assets/work/dsc.png';
  static const String sastaticket = 'assets/work/st.png';
  static const String university = 'assets/work/cui.png';
  static const String fullterIsb = 'assets/work/flutterIsl.png';

  // services
  static const String flutter = 'assets/services/flutter_icon.png';
  static const String android = 'assets/services/android_icon.png';
  static const String serverSide = 'assets/services/server_side_icon.png';


  static const List<IconData> socialIconURL = [
    FontAwesomeIcons.linkedin,
    FontAwesomeIcons.github,
  ];

  static const List<String> socialLinks = [
    "https://www.linkedin.com/in/osama96gh/",
    "https://github.com/osama96gh",
  ];

  static const String resume =
      'https://drive.google.com/file/d/16LSGBbHEcf5Q1yvjIhlrQq0xXBq4eowS/view?usp=sharing';

  static const String gitHub = 'https://github.com/osama96gh';
}

class BodyUtils {
  static const List<Widget> views = [
    HomePage(),
    About(),
    Services(),
    Portfolio(),
    Contact(),
    Footer(),
  ];
}
