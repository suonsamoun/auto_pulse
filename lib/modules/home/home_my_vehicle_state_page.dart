import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeMyVehicleStatePage extends StatelessWidget {
  const HomeMyVehicleStatePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color(0xff6A1B9A),
            Color(0xffFF4081),
          ],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Text(
            'Statistics',
            style: TextStyle(fontSize: 16.sp),
          ),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_outlined),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              _buildStateCard(),
              SizedBox(height: 15.sp),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Shortcut'),
                  GestureDetector(
                    child: const Text(
                      'Show more',
                    ),
                    onTap: () {},
                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buildStateCardMenu(title: 'Spend'),
                  _buildStateCardMenu(title: 'Spend'),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buildStateCardMenu(title: 'Spend'),
                  _buildStateCardMenu(title: 'Spend'),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  // State Card Menu
  Widget _buildStateCardMenu({required String title}) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: 70.w,
        decoration: BoxDecoration(
          color: Colors.grey.withOpacity(0.25),
          borderRadius: BorderRadius.circular(10.sp),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.sp),
          child: Row(
            children: [
              const Icon(Icons.wallet),
              SizedBox(width: 5.sp),
              Text(title),
            ],
          ),
        ),
      ),
    );
  }

  // StateCard
  Widget _buildStateCard() {
    return Container(
      height: 180.w,
      margin: EdgeInsets.only(top: 20.h),
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.25),
        borderRadius: BorderRadius.circular(10.sp),
      ),
      child: const Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Spend thid month',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 22,
                ),
              ),
              Text(
                "100 USD",
                style: TextStyle(
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
