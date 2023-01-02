import 'package:flutter/material.dart';
import 'package:folio/configs/app_theme.dart';
import 'package:folio/constants.dart';
import 'package:folio/utils/project_utils.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LinkWidget extends StatelessWidget {
  final LinkType linkType;
  final String url;

  const LinkWidget({Key? key, required this.linkType, required this.url})
      : super(key: key);

  Widget getIcon(LinkType linkType) {
    switch (linkType) {
      case LinkType.youtube:
        return   const FaIcon(FontAwesomeIcons.youtube,size: 18,);
        break;
      case LinkType.website:
        return const FaIcon(FontAwesomeIcons.arrowUpRightFromSquare,size: 18,);
      case LinkType.appleStore:
        return Icon(FontAwesomeIcons.appStore,size: 20,);
      case LinkType.googleStore:
        return Icon(FontAwesomeIcons.googlePlay,size: 18,);
      case LinkType.github:
        return Icon(FontAwesomeIcons.github,size: 20,);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: AppTheme.c!.primary!,
        ),
        child: IconButton(
          onPressed: () => openURL(url),
          enableFeedback: false,
          icon: getIcon(linkType),
          splashColor: Colors.transparent,
          color: Colors.white,
          padding: EdgeInsets.all(4),
        ));
  }
}
