import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:folio/configs/app_dimensions.dart';
import 'package:folio/utils/contact_utils.dart';
import 'package:folio/widget/contact_card.dart';
import 'package:folio/widget/custom_text_heading.dart';

import '../../configs/space.dart';

class ContactMobileTab extends StatelessWidget {
  const ContactMobileTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Space.y2!,
        const CustomSectionHeading(
          text: "Get in Touch",
        ),
        const CustomSectionSubHeading(
          text: "Let's build something together",
        ),
        Space.y2!,
        CarouselSlider.builder(
          itemCount: ContactUtils.contacts.length,
          itemBuilder: (BuildContext context, int itemIndex, int i) => Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: ContactCard(
              contactInfo: ContactUtils.contacts[i],
            ),
          ),
          options: CarouselOptions(
            height: AppDimensions.normalize(100),
            autoPlay: true,
            autoPlayInterval: const Duration(seconds: 5),
            enlargeCenterPage: true,
            autoPlayCurve: Curves.fastOutSlowIn,
            autoPlayAnimationDuration: const Duration(milliseconds: 800),
            enableInfiniteScroll: false,
          ),
        ),
      ],
    );
  }
}
