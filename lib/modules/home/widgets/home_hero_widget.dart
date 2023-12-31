import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeHeroWidget extends StatelessWidget {
  const HomeHeroWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 200.w,
      color: Colors.blue,
      child: const Text(
        'Home Hero',
        style: TextStyle(color: Colors.blue),
      ),
    );
  }
}
