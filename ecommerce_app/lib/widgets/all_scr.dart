import 'package:ecommerce_app/constant.dart';
import 'package:ecommerce_app/screens/product_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AllScr extends StatelessWidget {
  const AllScr({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 10.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Popular Products',
              style: TextStyle(
                  fontSize: FLargeSize2.sp, fontWeight: FontWeight.w600),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ProductScreen()));
              },
              child: Text(
                'See All',
                style: TextStyle(fontSize: FsmallSize.sp),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 15.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 185.w,
              height: 264.h,
              padding: EdgeInsets.all(14.w),
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: greyTheme,
                    blurRadius: 2,
                    spreadRadius: 1,
                  ),
                ],
                color: whiteTheme,
                borderRadius: BorderRadius.circular(8.r),
              ),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerRight,
                    child: Icon(
                      Icons.favorite,
                      color: greyTheme,
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8.r),
                    child: Image.network(
                      networkImage,
                      width: 157.w,
                      height: 120.h,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Leather Women Bag',
                      style: TextStyle(
                        fontSize: FLargeSize2.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: yellowTheme,
                        size: FLargeSize.sp,
                      ),
                      Text(
                        '(715 reviews)',
                        style: TextStyle(
                            fontSize: FsmallSize.sp, color: darkgreyTheme),
                      ),
                    ],
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      '\$135.00',
                      style: TextStyle(
                          fontSize: FLargeSize3.sp, color: brownTheme),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 185.w,
              height: 264.h,
              padding: EdgeInsets.all(14.w),
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: greyTheme,
                    blurRadius: 2,
                    spreadRadius: 1,
                  ),
                ],
                color: whiteTheme,
                borderRadius: BorderRadius.circular(8.r),
              ),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerRight,
                    child: Icon(
                      Icons.favorite,
                      color: greyTheme,
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8.r),
                    child: Image.network(
                      networkImage,
                      width: 157.w,
                      height: 120.h,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Leather Women Bag',
                      style: TextStyle(
                          fontSize: FLargeSize2.sp,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: yellowTheme,
                        size: FLargeSize.sp,
                      ),
                      Text(
                        '(715 reviews)',
                        style: TextStyle(
                            fontSize: FsmallSize.sp, color: darkgreyTheme),
                      ),
                    ],
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      '\$135.00',
                      style: TextStyle(
                          fontSize: FLargeSize3.sp, color: brownTheme),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(
          height: 10.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Latest Products',
              style: TextStyle(
                  fontSize: FLargeSize2.sp, fontWeight: FontWeight.w600),
            ),
            GestureDetector(
              onTap: () {},
              child: Text(
                'See All',
                style: TextStyle(fontSize: FsmallSize.sp),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 10.h,
        ),
        Container(
          margin: EdgeInsets.all(1.w),
          width: 386.w,
          height: 98.h,
          padding: EdgeInsets.all(14.w),
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: greyTheme,
                blurRadius: 2,
                spreadRadius: 1,
              ),
            ],
            color: whiteTheme,
            borderRadius: BorderRadius.circular(8.r),
          ),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8.r),
                child: Image.network(
                  networkImage,
                  width: 70.w,
                  height: 70.h,
                ),
              ),
              SizedBox(
                width: 12.w,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Text(
                        'Headphone Holder',
                        style: TextStyle(
                            fontSize: FLargeSize2.sp,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        width: 75.w,
                      ),
                      Row(
                        children: [
                          Text(
                            '(1446)',
                            style: TextStyle(
                              fontSize: FsmallSize,
                              color: darkgreyTheme,
                            ),
                          ),
                          SizedBox(
                            width: 8.w,
                          ),
                          Icon(
                            Icons.star,
                            color: yellowTheme,
                            size: FLargeSize.sp,
                          )
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Text(
                    '\$135.00',
                    style: TextStyle(fontSize: FLargeSize3, color: brownTheme),
                  ),
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
