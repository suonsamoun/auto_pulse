import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class TestPage extends StatelessWidget {
  const TestPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Test page'),
      ),
      body: Center(
        child: Column(
          children: [
            const Text(
              'data',
              style: TextStyle(color: Colors.black),
            ),
            ElevatedButton(
              onPressed: () => context.go('/home'),
              child: const Text('Go to the Details screen'),
            ),
          ],
        ),
      ),
    );
  }
}
