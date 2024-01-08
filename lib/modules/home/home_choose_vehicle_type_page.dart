import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeChooseVehicleTypePage extends StatelessWidget {
  const HomeChooseVehicleTypePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Choose your vehicle',
          style: TextStyle(fontSize: 16.sp),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_outlined),
          onPressed: () => Navigator.of(context).pop(),
        ),
        // actions: [
        //   IconButton(
        //     icon: const Icon(Icons.close),
        //     onPressed: () => Navigator.of(context).pop(),
        //   ),
        // ],
      ),
    );
  }
}
