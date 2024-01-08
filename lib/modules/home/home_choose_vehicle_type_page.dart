import 'package:auto_pulse/modules/home/models/vehicle_type_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class HomeChooseVehicleTypePage extends StatelessWidget {
  const HomeChooseVehicleTypePage({super.key});

  @override
  Widget build(BuildContext context) {
    final vehicleTypes = VehicleTypeModel.getFakeVehicleTypes();

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Choose your vehicle',
          style: TextStyle(fontSize: 16.sp),
        ),
        automaticallyImplyLeading: false,
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 5.sp),
            child: IconButton(
              icon: const Icon(Icons.close),
              onPressed: () => Navigator.of(context).pop(),
            ),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: vehicleTypes.length,
        padding: EdgeInsets.symmetric(horizontal: 20.sp),
        itemBuilder: (BuildContext context, int index) {
          final type = vehicleTypes[index];
          return GestureDetector(
            onTap: () => context.goNamed('add-my-vehicle-form'),
            child: Container(
              margin: EdgeInsets.only(bottom: 10.sp),
              width: double.infinity,
              height: 150.w,
              decoration: BoxDecoration(
                border: Border.all(width: 1, color: Colors.grey),
                borderRadius: const BorderRadius.all(Radius.circular(50)),
              ),
              child: Center(
                child: Text(
                  type.name,
                  style: TextStyle(
                    fontSize: 20.sp,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
