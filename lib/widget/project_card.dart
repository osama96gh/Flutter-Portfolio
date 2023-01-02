import 'package:flutter/material.dart';
import 'package:folio/configs/configs.dart';
import 'package:folio/constants.dart';
import 'package:folio/provider/app_provider.dart';

import 'package:provider/provider.dart';

import '../sections/portfolio/link_widget.dart';
import '../utils/project_utils.dart';

class ProjectCard extends StatefulWidget {
  final String? banner;
  final Map<LinkType, String>? projectLink;
  final String? projectIcon;
  final String projectTitle;
  final String projectDescription;
  final IconData? projectIconData;

  const ProjectCard({
    Key? key,
    this.banner,
    this.projectIcon,
    this.projectLink,
    this.projectIconData,
    required this.projectTitle,
    required this.projectDescription,
  }) : super(key: key);

  @override
  ProjectCardState createState() => ProjectCardState();
}

class ProjectCardState extends State<ProjectCard> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    final appProvider = Provider.of<AppProvider>(context);

    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return MouseRegion(
      // hoverColor: Colors.transparent,
      // splashColor: Colors.transparent,
      // highlightColor: Colors.transparent,
      // onTap: widget.projectLink == null
      //     ? () {}
      //     : () => openURL(
      //           widget.projectLink!,
      //         ),
      opaque: false,

      onEnter: (e) {
        setState(() {
          isHover = true;
        });
      },
      onExit: (e) {
        setState(() {
          isHover = false;
        });
      },
      child: Container(
        margin: Space.h,
        padding: Space.all(),
        width: AppDimensions.normalize(150),
        height: AppDimensions.normalize(90),
        decoration: BoxDecoration(
          color: appProvider.isDark ? Colors.grey[900] : Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: isHover
              ? [
                  BoxShadow(
                    color: AppTheme.c!.primary!.withAlpha(100),
                    blurRadius: 12.0,
                    offset: const Offset(0.0, 0.0),
                  )
                ]
              : [
                  BoxShadow(
                    color: Colors.black.withAlpha(100),
                    blurRadius: 12.0,
                    offset: const Offset(0.0, 0.0),
                  )
                ],
        ),
        child: Stack(
          fit: StackFit.passthrough,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [

                widget.projectIcon != null
                    ?
                    // ? (width > 1135 || width < 950)
                    //     ? Image.asset(
                    //         widget.projectIcon!,
                    //         height: height * 0.05,
                    //       )
                    Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Image.asset(
                            widget.projectIcon!,
                            height: height * 0.05,
                          ),
                          SizedBox(
                            width: width * 0.01,
                          ),
                          Expanded(
                            child: Text(
                              widget.projectTitle,
                              style: AppText.b2b,
                              textAlign: TextAlign.start,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      )
                    : const Spacer(),
                widget.projectIconData != null
                    ? Icon(
                        widget.projectIconData,
                        color: AppTheme.c!.primary!,
                        size: height * 0.1,
                      )
                    : Container(),
                // (width > 1135 || width < 950)
                //     ? SizedBox(
                //         height: height * 0.02,
                //       )
                //     : const SizedBox(),
                // (width > 1135 || width < 950)
                //     ? Text(
                //         widget.projectTitle,
                //         style: AppText.b2b,
                //         textAlign: TextAlign.center,
                //       )
                //     : Container(),
                SizedBox(
                  height: height * 0.01,
                ),
                Text(
                  widget.projectDescription,
                  textAlign: TextAlign.start,
                  maxLines: 6,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(
                  height: height * 0.01,
                ),
                const Spacer(),

                if (widget.projectLink != null)
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: widget.projectLink!.keys
                        .map(
                          (e) => Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 4.0, vertical: 2),
                            child: LinkWidget(
                              url: widget.projectLink![e]!,
                              linkType: e,
                            ),
                          ),
                        )
                        .toList(),
                  ),
              ],
            ),
            if (widget.banner != null)
              IgnorePointer(
                child: AnimatedOpacity(
                  duration: const Duration(milliseconds: 400),
                  opacity: isHover ? 0.0 : 1.0,
                  child: Container(
                    clipBehavior: Clip.hardEdge,
                    decoration: BoxDecoration(          borderRadius: BorderRadius.circular(6),
                    ),
                    child: Image.asset(
                      widget.banner!,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
