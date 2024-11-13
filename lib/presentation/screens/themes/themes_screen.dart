import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/theme/app_theme.dart';
import 'package:widgets_app/presentation/providers/theme_dark_provider.dart';

class ThemesScreen extends ConsumerWidget {
  static const name = 'themes_screen';

  const ThemesScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isDarkMode = ref.watch(isDarkModeProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Themes Screen'),
        actions: [
          IconButton(
            onPressed: () {
              ref
                  .read(isDarkModeProvider.notifier)
                  .update((isDarkMode) => !isDarkMode);
            },
            icon: isDarkMode
                ? const Icon(Icons.light_mode_outlined)
                : const Icon(Icons.dark_mode_outlined),
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          FilledButton.tonal(
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) => ColorPickerDialog(ref: ref),
              );
            },
            child: const Text("Cambio de color custom"),
          ),
          const Expanded(child: _ThemeChangerView()),
        ],
      ),
    );
  }
}

class ColorPickerDialog extends StatefulWidget {
  final WidgetRef ref;
  const ColorPickerDialog({required this.ref, Key? key}) : super(key: key);

  @override
  State<ColorPickerDialog> createState() => _ColorPickerDialogState();
}

class _ColorPickerDialogState extends State<ColorPickerDialog> {
  double red = 0, green = 0, blue = 0;

  Color get selectedColor =>
      Color.fromARGB(255, red.toInt(), green.toInt(), blue.toInt());

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Escoja su color favorito'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text('Ajuste los valores de color'),
          Slider(
            value: red,
            min: 0,
            max: 255,
            label: 'Rojo: ${red.toInt()}',
            onChanged: (value) => setState(() => red = value),
          ),
          Slider(
            value: green,
            min: 0,
            max: 255,
            label: 'Verde: ${green.toInt()}',
            onChanged: (value) => setState(() => green = value),
          ),
          Slider(
            value: blue,
            min: 0,
            max: 255,
            label: 'Azul: ${blue.toInt()}',
            onChanged: (value) => setState(() => blue = value),
          ),
          Container(
            height: 50,
            width: 50,
            color: selectedColor,
          ),
        ],
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: const Text('Cancelar'),
        ),
        TextButton(
          onPressed: () {
            widget.ref.read(selectedcolorListProvider.notifier).state =
                selectedColor.value;
            Navigator.pop(context);
          },
          child: const Text('Aceptar'),
        ),
      ],
    );
  }
}

class _ThemeChangerView extends ConsumerWidget {
  const _ThemeChangerView();

  @override
  Widget build(BuildContext context, ref) {
    final List<Color> colors = ref.watch(colorListProvider);
    final int selectedColor = ref.watch(selectedcolorListProvider);

    return ListView.builder(
      itemCount: colors.length,
      itemBuilder: (context, index) {
        final color = colors[index];
        final colorName = colorNames[color] ?? 'Custom Color';
        return RadioListTile(
          title: Text(
            'Este color',
            style: TextStyle(color: color),
          ),
          activeColor: color,
          subtitle: Text(colorName),
          value: index,
          groupValue: selectedColor,
          onChanged: (value) {
            ref.read(selectedcolorListProvider.notifier).state = index;
          },
        );
      },
    );
  }
}
