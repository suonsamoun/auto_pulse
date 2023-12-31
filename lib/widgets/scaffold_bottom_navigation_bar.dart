import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ScaffoldBottomNavigationBar extends StatelessWidget {
  const ScaffoldBottomNavigationBar({
    required this.navigationShell,
    Key? key,
  }) : super(key: key ?? const ValueKey<String>('ScaffoldBottomNavigationBar'));

  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: navigationShell,
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0.0,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        backgroundColor: const Color(0xffe6e8ed),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(Icons.home_filled),
            activeIcon: Icon(Icons.home_filled),
          ),
          BottomNavigationBarItem(
            label: 'Explore',
            icon: Icon(Icons.widgets_outlined),
            activeIcon: Icon(Icons.widgets_rounded),
          ),
          BottomNavigationBarItem(
            label: 'My',
            icon: Icon(Icons.person),
            activeIcon: Icon(Icons.person),
          ),
        ],
        currentIndex: navigationShell.currentIndex,
        onTap: (int tappedIndex) => navigationShell.goBranch(tappedIndex),
      ),
    );
  }
}
