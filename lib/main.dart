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
            appBarTheme: const AppBarTheme(backgroundColor: Color(0xffe6e8ed)),
            textTheme: Theme.of(context).textTheme.apply(
                  fontSizeFactor: 1.sp,
                  fontSizeDelta: 1.sp,
                  bodyColor: const Color(0xff22215B),
                  displayColor: const Color(0xff22215B),
                ),
            colorScheme:
                ColorScheme.fromSeed(seedColor: Colors.deepPurple).copyWith(
              background: const Color(0xffe6e8ed),
            ),
          ),
          routerConfig: AppRouter.routes,
        );
      },
    );
  }
}
