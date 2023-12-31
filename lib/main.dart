import 'package:auto_pulse/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const AutoPulse());
}

class AutoPulse extends StatelessWidget {
  const AutoPulse({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return MaterialApp.router(
          title: 'Auto Pulse',
          debugShowCheckedModeBanner: false,
          // theme: ThemeUtil.light,
          // darkTheme: ThemeUtil.dark,
          theme: ThemeData(
            useMaterial3: true,
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            textTheme: Typography.englishLike2018.apply(fontSizeFactor: 1.sp),
          ),
          routerConfig: AppRouter.routes,
        );
      },
    );
  }
}
