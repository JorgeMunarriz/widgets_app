import 'package:flutter/material.dart';

class PorgressScreens extends StatelessWidget {
  static const name = 'progress_screen';

  const PorgressScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Progress indicators'),
      ),
      body: const _ProgressView(),
    );
  }
}

class _ProgressView extends StatelessWidget {
  const _ProgressView();

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Center(
      child: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          const Text('Circular progress indicator'),
          const SizedBox(
            height: 10,
          ),
          CircularProgressIndicator(
            color: colors.onSecondary,
            strokeWidth: 2,
            backgroundColor: colors.primary,
          ),
          const SizedBox(
            height: 30,
          ),
          const Text(' Circular and Linear controlled progress indicator'),
          const SizedBox(
            height: 10,
          ),
          const _ControlledProgressIndicator(),
        ],
      ),
    );
  }
}

class _ControlledProgressIndicator extends StatelessWidget {
  const _ControlledProgressIndicator();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: Stream.periodic(const Duration(milliseconds: 300), (value) {
          return (value * 2) / 100;
        }).takeWhile((value) => value < 100),
        builder: (context, snapshot) {
          final progressValue = snapshot.data ?? 0.0;

          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircularProgressIndicator(
                  value: progressValue,
                  strokeWidth: 2,
                  backgroundColor: Colors.black12,
                ),
                const SizedBox(
                  width: 20,
                ),
                Expanded(child: LinearProgressIndicator(value: progressValue))
              ],
            ),
          );
        });
  }
}
