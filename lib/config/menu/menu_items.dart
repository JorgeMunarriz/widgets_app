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
    title: 'Botones',
    subtitle: 'Varios botones en Flutter',
    link: '/buttons',
    icon: Icons.smart_button_outlined,
  ),
  MenuItem(
    title: 'Tarjetas',
    subtitle: 'Un contenedor estlizado',
    link: '/cards',
    icon: Icons.credit_card,
  ),
  MenuItem(
    title: 'Scroll Infinito',
    subtitle: 'Un contenedor estlizado',
    link: '/infinite-scroll',
    icon: Icons.credit_card,
  ),
  MenuItem(
    title: 'Progress Indicators',
    subtitle: 'Un contenedor estlizado',
    link: '/progress',
    icon: Icons.refresh,
  ),
  MenuItem(
    title: 'Snackbar',
    subtitle: 'Un contenedor estlizado',
    link: '/snackbar',
    icon: Icons.credit_card,
  ),
  MenuItem(
    title: 'Ui controlls',
    subtitle: 'Un contenedor estlizado',
    link: '/ui-controlls',
    icon: Icons.credit_card,
  ),
];
