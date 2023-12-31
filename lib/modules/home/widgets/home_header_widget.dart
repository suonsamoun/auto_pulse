import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeHeaderWidget extends StatelessWidget {
  const HomeHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          'Summary',
          style: TextStyle(
            color: Colors.blue,
            fontSize: 20.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
        IconButton(
          padding: EdgeInsets.zero,
          splashRadius: 0.0001,
          constraints: const BoxConstraints(minWidth: 22, maxWidth: 22),
          onPressed: () => {
            const AlertDialog(
              title: Text('You pressed me'),
            )
          },
          icon: const Icon(Icons.person_outline_outlined),
        )
      ],
    );
  }
}
