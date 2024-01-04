import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class HomeCarListPage extends StatelessWidget {
  const HomeCarListPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> entries = <String>['A', 'B', 'C'];
    final List<int> colorCodes = <int>[600, 500, 100];

    return Scaffold(
      appBar: AppBar(
        title: const Text('My Car List'),
        actions: [
          IconButton(
            onPressed: () => context.goNamed('add-my-car-form'),
            icon: const Icon(Icons.add),
          )
        ],
      ),
      body: Column(
        children: [
          const Center(
            child: Text(
              'Get posted on your car maintenance due date, \n insurance  and road tax renewal',
            ),
          ),
          const SizedBox(height: 10),
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              padding: const EdgeInsets.all(8),
              itemCount: entries.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  height: 150.h,
                  color: Colors.amber[colorCodes[index]],
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Center(child: Icon(Icons.verified_sharp)),
                          Align(
                            alignment: Alignment.centerRight,
                            child: IconButton.filledTonal(
                              onPressed: () {},
                              icon: const Icon(Icons.edit),
                            ),
                          )
                        ],
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Toyota Vitz',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text('KANDAL-0812'),
                        ],
                      )
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
