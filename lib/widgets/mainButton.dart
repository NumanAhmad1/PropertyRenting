import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:property_renting/core/appColors.dart';
import 'package:property_renting/core/textStyles.dart';

class MainButton extends StatelessWidget {
  final String buttonName;

  const MainButton({super.key , required this.buttonName});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding:  EdgeInsets.symmetric(
          horizontal: 7.w, vertical: 15.h),
      decoration: BoxDecoration(
        color: context.primaryColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(
        buttonName,
        style: context.buttonText,
      ),
    );
  }
}
