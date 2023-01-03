import 'package:flutter/material.dart';
import 'package:folio/animations/bottom_animation.dart';
import 'package:folio/configs/configs.dart';
import 'package:folio/utils/contact_utils.dart';
import 'package:folio/widget/contact_card.dart';
import 'package:folio/widget/custom_text_heading.dart';
import 'package:folio/widget/project_card.dart';

class ContactDesktop extends StatelessWidget {
  const ContactDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: Space.all(1, 1),
      child: Column(
        children: [
          Space.y2!,

          const CustomSectionHeading(
            text: "Get in Touch",
          ),
          const CustomSectionSubHeading(
            text: "Let's build something together",
          ),
          Space.y2!,
          Wrap(
              alignment: WrapAlignment.center,
              runSpacing: AppDimensions.normalize(10),
              children: ContactUtils.contacts
                   .map((e) => WidgetAnimator(
                        child: ContactCard(
                          contactInfo: e,
                        ),
                      ))
                  .toList()),
        ],
      ),
    );
  }
}
