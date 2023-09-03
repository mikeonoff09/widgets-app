import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:widgets_app/config/menu/menu_items.dart';

class SideMenu extends StatefulWidget {
  const SideMenu({super.key, required this.scaffoldKey});

  final GlobalKey<ScaffoldState> scaffoldKey;

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  int navDrawerIndex = 0;
  @override
  Widget build(BuildContext context) {
    final viewPaddingTop = MediaQuery.of(context).viewPadding.top;
    final hasNotch = viewPaddingTop > 30;

    return NavigationDrawer(
      elevation: 5,
      onDestinationSelected: (value) => setState(() {
        navDrawerIndex = value;
        // context.pop(); // can use the scaffoldKey to close Drawer
        context.push(appMenuItems[value].link);
        widget.scaffoldKey.currentState?.closeDrawer();
      }),
      selectedIndex: navDrawerIndex,
      children: [
        Padding(
          padding: EdgeInsets.fromLTRB(30, hasNotch ? 0 : 20, 20, 10),
          child: const Text('Main Menu'),
        ),
        ...appMenuItems.sublist(0, 3).map(
              (item) => NavigationDrawerDestination(
                icon: Icon(item.icon),
                label: Text(item.title),
              ),
            ),
        const Padding(
          padding: EdgeInsets.fromLTRB(16, 4, 16, 4),
          child: Divider(thickness: 2),
        ),
        ...appMenuItems.sublist(3).map(
              (item) => NavigationDrawerDestination(
                icon: Icon(item.icon),
                label: Text(item.title),
              ),
            ),
      ],
    );
  }
}
