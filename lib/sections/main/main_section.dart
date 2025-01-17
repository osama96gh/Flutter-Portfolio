import 'package:flutter/material.dart';
import 'package:folio/animations/entrance_fader.dart';
import 'package:folio/configs/app.dart';
import 'package:folio/configs/configs.dart';
import 'package:folio/provider/app_provider.dart';
import 'package:folio/provider/drawer_provider.dart';
import 'package:folio/provider/scroll_provider.dart';
import 'package:folio/responsive/responsive.dart';
import 'package:folio/utils/navbar_utils.dart';
import 'package:folio/utils/utils.dart';
import 'package:folio/widget/arrow_on_top.dart';
import 'package:folio/widget/dark_light_switch.dart';
import 'package:folio/widget/navbar_actions_button.dart';
import 'package:provider/provider.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import 'package:universal_html/html.dart' as html;

part 'widgets/_body.dart';

part 'widgets/_mobile_drawer.dart';

part 'widgets/_navbar_desktop.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    App.init(context);
    final drawerProvider = Provider.of<DrawerProvider>(context);
    final appProvider = Provider.of<AppProvider>(context);

    return Scaffold(
      key: drawerProvider.key,
      extendBodyBehindAppBar: true,
      drawer: !Responsive.isDesktop(context) ? const _MobileDrawer() : null,
      body: SafeArea(
        child: Stack(
          children: [
            const _Body(),
            const ArrowOnTop(),
            Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                appProvider.isDark ? Colors.black : Colors.white,
                appProvider.isDark
                    ? Colors.black.withOpacity(0)
                    : Colors.white.withOpacity(0)
              ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
              child: Padding(
                padding: const EdgeInsets.only(bottom: 80.0),
                child:
                    Responsive.isTablet(context) || Responsive.isMobile(context)
                        ? const _NavBarTablet()
                        : const _NavbarDesktop(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
