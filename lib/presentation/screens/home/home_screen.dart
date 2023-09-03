import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
// import 'package:go_router/go_router.dart';
import 'package:widgets_app/config/menu/menu_items.dart';
import 'package:widgets_app/config/router/app_router.dart';
import 'package:widgets_app/presentation/widgets/side_menu.dart';
// import 'package:widgets_app/presentation/screens/cards/cards_screen.dart';

class HomeScreen extends StatelessWidget {
  static const String name = AppRoutes.home;
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final scaffoldKey = GlobalKey<ScaffoldState>();
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        title: const Text('HomeScreen'),
      ),
      body: const _HomeView(),
      drawer: SideMenu(
        scaffoldKey: scaffoldKey,
      ),
    );
  }
}

class _HomeView extends StatelessWidget {
  const _HomeView();

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return ListView.builder(
      itemCount: appMenuItems.length,
      itemBuilder: (BuildContext context, int index) {
        final menuItem = appMenuItems[index];
        return ListTile(
          title: Text(menuItem.title),
          subtitle: Text(menuItem.subtitle),
          leading: Icon(
            menuItem.icon,
            color: colors.primary,
          ),
          trailing: Icon(
            Icons.arrow_forward_ios_rounded,
            color: colors.primary,
          ),
          onTap: () {
            // Navigator.pushNamed(context, menuItem.link);
            // context.push(CardsScreen.name); // not dinamic
            context.push(menuItem.link);
          },
        );
      },
    );
  }
}
