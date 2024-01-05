import 'package:auto_pulse/modules/home/widgets/home_circle_avatar_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final controller = PageController(viewportFraction: 1, keepPage: true);

    final List<String> vehicles = <String>[
      'Toyota Vitz 2010',
      'Toyota Prius 2015',
      'Kia Morning 2020'
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('My vehicles')),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 50.h),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              if (vehicles.isNotEmpty) ...[
                Expanded(
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      PageView.builder(
                        controller: controller,
                        itemCount: vehicles.length,
                        physics: const PageScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (BuildContext context, int index) {
                          return HomeCircleAvatarWidget(
                            path: '/home/my-car-state',
                            title: vehicles[index],
                            imagePath:
                                'https://www.extremedimensions.com/images/T/112376_1.jpg',
                          );
                        },
                      ),
                      if (vehicles.length > 1) ...[
                        Positioned(
                          bottom: 30.h,
                          child: SmoothPageIndicator(
                            controller: controller,
                            count: vehicles.length,
                            effect: ExpandingDotsEffect(
                              spacing: 2,
                              dotHeight: 10.h,
                              dotWidth: 10.h,
                              expansionFactor: 2,
                              dotColor: Colors.green.withOpacity(0.25),
                            ),
                          ),
                        ),
                      ]
                    ],
                  ),
                ),
              ],
              HomeCircleAvatarWidget(
                path: '/home/my-car-list',
                showSubtitle: vehicles.isEmpty,
                subTitle:
                    'You don\'t have any vehicle yet, add a \n vehicle now!',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
