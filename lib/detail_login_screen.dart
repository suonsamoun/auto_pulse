import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class DetailLoginScreen extends StatelessWidget {
  const DetailLoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Details Login Screen'),
        // leading: IconButton(
        //   icon: const Icon(Icons.arrow_back_outlined),
        //   onPressed: () {
        //     Navigator.of(context).pop();
        //   },
        // ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <ElevatedButton>[
            ElevatedButton(
              onPressed: () {
                // context.go('/sectionA');
                context.go('/sectionB');
              },
              child: const Text('Go to BottomNavBar'),
            ),
          ],
        ),
      ),
    );
  }
}
