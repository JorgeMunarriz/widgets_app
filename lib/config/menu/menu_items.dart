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
    title: 'Contador Riverpood ',
    subtitle: 'Introducción a Riverpood ',
    link: '/counter',
    icon: Icons.list_alt_rounded,
  ),
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
    subtitle: 'Listas infinitas',
    link: '/infinite-scroll',
    icon: Icons.list_alt_rounded,
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
    icon: Icons.info_outline,
  ),
  MenuItem(
    title: 'Animated container',
    subtitle: 'Stateful widget animado',
    link: '/animated',
    icon: Icons.check_box_outline_blank_outlined,
  ),
  MenuItem(
    title: 'Ui controlls + Tiles',
    subtitle: 'Un contenedor estlizado',
    link: '/ui-controls',
    icon: Icons.car_rental_outlined,
  ),
  MenuItem(
    title: 'Introducción a la app',
    subtitle: 'Pequeño tutorial introductorio',
    link: '/tutorial',
    icon: Icons.accessible_rounded,
  ),
  MenuItem(
    title: 'Cambio de temas',
    subtitle: 'Pantalla para la configuracion de temas',
    link: '/themes',
    icon: Icons.color_lens_rounded,
  ),
];
