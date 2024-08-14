import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:property_renting/core/appColors.dart';
import 'package:property_renting/core/textStyles.dart';
import 'package:property_renting/widgets/mainButton.dart';
import 'package:property_renting/widgets/mainTile.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: context.whiteColor,
      child: SafeArea(
        child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 10,),
                  /// add listing button
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      MainButton(buttonName: "Add Listing",),
                    ],
                  ),

                  /// text
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Search from thousands of properties',
                    style: context.h3?.copyWith(fontSize: 16),
                  ),

                  /// Tab bar buttons
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Rentals',
                          style: context.labelMedium,
                        ),
                        Text(
                          'For Sale',
                          style: context.labelMedium,
                        ),
                        Text(
                          'For Lease',
                          style: context.labelMedium,
                        ),
                      ],
                    ),
                  ),

                  /// Search Field
                  TextField(
                    style: const TextStyle().copyWith(color: context.blackColor),
                  ),

                  /// search button
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 15),
                        alignment: Alignment.center,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 40, vertical: 16),
                        decoration: BoxDecoration(
                          color: context.blackColor,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text(
                          'Search',
                          style: context.buttonText,
                        ),
                      ),
                    ],
                  ),

                  /// Featured Listings
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Featured Listings',
                        style: context.h2,
                      ),
                    ],
                  ),

                  /// grid view
                  SizedBox(
                    height: 0.5.sh,
                    child: GridView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                        gridDelegate:
                             SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2, childAspectRatio: 170.w / 199.h, crossAxisSpacing: 5.w, mainAxisSpacing: 5),
                        itemCount: 4,
                        itemBuilder: (context, index) {
                          return const MainGridTile();
                        }),
                  ),
                  SizedBox(height: 20.h,),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      MainButton(buttonName: "Browse All Featured Listings"),
                    ],
                  ),
                  SizedBox(height: 30.h,),
                  Text('Find All Whatever you need for your next Rental or purchase', style: context.h3,textAlign: TextAlign.center,),
                  Text('''Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod  tostrud exercitation ullamco.

                    fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident,  sunt in culpa qui officia deserunt mollit anim id est laborum."
                    ''', style: context.paraSmall,textAlign: TextAlign.center,),
                  SizedBox(height: 20.h,),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      MainButton(buttonName: 'Add Listing'),
                    ],
                  ),
                  SizedBox(height: 30.h,),],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
