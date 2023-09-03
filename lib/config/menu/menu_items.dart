import 'package:flutter/material.dart';

class MenuItem {
  final String title;
  final String subtitle;
  final String link;
  final IconData icon;

  const MenuItem({
    required this.title,
    required this.subtitle,
    required this.link,
    required this.icon,
  });
}

const appMenuItems = <MenuItem>[
  MenuItem(
    title: "Botones",
    subtitle: 'Varios botones en flutter',
    link: '/buttons',
    icon: Icons.smart_button_outlined,
  ),
  MenuItem(
    title: "Tarjetas",
    subtitle: 'Un contenedor estilizado',
    link: '/cards',
    icon: Icons.credit_card,
  ),
  MenuItem(
    title: "Animated Screen",
    subtitle: 'Screen Animaciones',
    link: '/animated',
    icon: Icons.animation,
  ),
  MenuItem(
    title: "App Tutorial",
    subtitle: 'App Tutorial Screen',
    link: '/app_tutorial',
    icon: Icons.add_to_queue_outlined,
  ),
  MenuItem(
    title: "Infinite Scroll",
    subtitle: 'Infinite Scroll Screen',
    link: '/infinite_scroll',
    icon: Icons.arrow_circle_down,
  ),
  MenuItem(
    title: "Progress Screen",
    subtitle: 'Progress Screen Screen',
    link: '/progress',
    icon: Icons.panorama_fisheye_rounded,
  ),
  MenuItem(
    title: "UI Controls Screen",
    subtitle: 'Ui Controls Screen',
    link: '/ui_controls',
    icon: Icons.control_camera,
  ),
  MenuItem(
    title: "Snackbar Screen",
    subtitle: 'Snackbars and Dialogs screen',
    link: '/snackbars',
    icon: Icons.add_alert_outlined,
  ),
];
