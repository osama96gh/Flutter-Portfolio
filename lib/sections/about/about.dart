import 'package:flutter/material.dart';
import 'package:folio/responsive/responsive.dart';
import 'package:folio/sections/about/about_desktop.dart';
import 'package:folio/sections/about/about_mobile.dart';
import 'package:folio/sections/about/about_tablet.dart';

class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     return const Responsive(
      tablet: Padding(padding: EdgeInsets.symmetric(horizontal: 20),child: AboutDesktop(),),
      mobile:Padding(padding: EdgeInsets.symmetric(horizontal: 8),child: AboutDesktop(),),
      desktop: Padding(padding: EdgeInsets.symmetric(horizontal: 40),child: AboutDesktop(),),
    );
  }
}
