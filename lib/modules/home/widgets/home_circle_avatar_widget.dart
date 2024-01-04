import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class HomeCircleAvatarWidget extends StatelessWidget {
  const HomeCircleAvatarWidget({
    super.key,
    this.title,
    this.subTitle,
    this.imagePath = '',
    this.showSubtitle = false,
    required this.path,
  });

  final String path;
  final String? title;
  final String? subTitle;
  final String imagePath;
  final bool showSubtitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (title != null) ...[
          Padding(
            padding: EdgeInsets.only(bottom: 5.h),
            child: Text(
              '$title'.toUpperCase(),
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 24.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
        GestureDetector(
          onTap: () => context.go(path),
          child: Container(
            height: 200.w,
            width: 200.w,
            decoration: BoxDecoration(
              color: Colors.green.withOpacity(0.25), // border color
              shape: BoxShape.circle,
            ),
            child: imagePath.isEmpty
                ? Icon(
                    Icons.add_outlined,
                    size: 120.w,
                    color: Colors.white,
                  )
                : ClipOval(
                    child: Image.network(
                      imagePath,
                      width: 150,
                      height: 150,
                      fit: BoxFit.cover,
                    ),
                  ),
          ),
        ),
        if (subTitle != null && showSubtitle) ...[
          SizedBox(height: 15.h),
          Text(
            '$subTitle',
            textAlign: TextAlign.center,
          )
        ]
      ],
    );
  }
}
