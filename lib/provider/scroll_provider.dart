import 'package:flutter/cupertino.dart';
import 'package:folio/configs/app_dimensions.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class ScrollProvider extends ChangeNotifier {
  final scrollController = ItemScrollController();
  final GlobalKey testKey = GlobalKey();

  ItemScrollController get controller => scrollController;

  scroll(int index) {
    double offset = 727.0 * index;
    switch (index) {
      case 0:
        offset = 0;
        break;
      case 1:
        offset = 250;
        break;

      case 2:
        offset = 255;
        break;

      case 3:
        offset = 250;
        break;
    }
    // index == 1
    //     ? 270
    //     : index == 2
    //         ? 255
    //         : index == 3
    //             ? 250
    //             : 245;
    controller.scrollTo(
        index: index,
        duration: Duration(seconds: 2),
        curve: Curves.easeInOutCubic);
    // controller.animateTo(
    //   AppDimensions.normalize(
    //     offset * index.toDouble(),
    //   ),
    //   duration: const Duration(seconds: 1),
    //   curve: Curves.easeInOut,
    // );
  }

  scrollMobile(int index) {
    double offset = index == 1
        ? 290
        : index == 2
            ? 360
            : index == 3
                ? 300
                : 310;

    controller.scrollTo(
        index: index,
        duration: Duration(seconds: 2),
        curve: Curves.easeInOutCubic);
    // controller.animateTo(
    //   AppDimensions.normalize(
    //     offset * index.toDouble(),
    //   ),
    //   duration: const Duration(seconds: 1),
    //   curve: Curves.easeInOut,
    // );
  }
}
