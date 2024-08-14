import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:property_renting/core/appColors.dart';
import 'package:property_renting/core/textStyles.dart';

class MainGridTile extends StatefulWidget {
  const MainGridTile({super.key});

  @override
  State<MainGridTile> createState() => _MainGridTileState();
}

class _MainGridTileState extends State<MainGridTile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 170.w,
      height: 199.h,
      decoration: BoxDecoration(
        color: context.whiteColor,
        borderRadius: BorderRadius.circular(10.r),
        boxShadow: [
          BoxShadow(
            offset: const Offset(3, 8),
            blurRadius: 10,
            spreadRadius: 0,
            color: context.lightGrayColor,
          ),
        ]
      ),
      child: Column(
        children: [
          /// image
          Container(
            clipBehavior: Clip.hardEdge,
            height: 132.h,
            width: 170.w,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.r)),
            child: Image.asset("assets/images/sampleImage1.png"),
          ),
          /// text of the image
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text('\$4,500', style: context.h3,),
                  Text(' p/m', style: context.paraSmall,),
                ],
              ),
              Row(
                children: [
                  Icon(Icons.watch_later_outlined, color: context.lightGrayColor,size: 20.sp,),
                  Text('1 day ago ',style: context.paraSmall,),
                ],
              ),
              
              
            ],
          ),
          Row(
            children: [
              Icon(Icons.location_on_outlined, color: context.lightGrayColor,size: 20.sp,),
              Expanded(child: Text('45123A, bay road, Down Town, Chicago', style: context.paraSmall,maxLines: 1,)),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(Icons.area_chart_sharp, color: context.lightGrayColor, size: 20.sp,),
                  Text(' 2000 sqft', style: context.paraSmall,),
                ],
              ),
              Row(
                children: [
                  Icon(Icons.bed_outlined, color: context.lightGrayColor,size: 20.sp,),
                  Text('4',style: context.paraSmall,),
                ],
              ),
              Row(
                children: [
                  Icon(Icons.bathtub_outlined, color: context.lightGrayColor,size: 20.sp,),
                  Text('3  ',style: context.paraSmall,),
                ],
              ),


            ],
          ),
        ],
      ),
    );
  }
}
