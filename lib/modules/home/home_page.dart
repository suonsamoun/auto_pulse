import 'package:auto_pulse/modules/home/widgets/home_header_widget.dart';
import 'package:auto_pulse/modules/home/widgets/home_hero_widget.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          const HomeHeaderWidget(),
          const HomeHeroWidget(),
          Center(
            child: Column(
              children: [
                ElevatedButton(
                  onPressed: () => context.goNamed('test'),
                  child: const Text('Go to test page'),
                ),
                ElevatedButton(
                  onPressed: () => context.go('/home/another'),
                  child: const Text('Go to another page'),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
