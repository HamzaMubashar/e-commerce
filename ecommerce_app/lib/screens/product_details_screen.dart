import 'package:ecommerce_app/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: Icon(Icons.arrow_back),
        actions: [
          Icon(Icons.favorite_outline),
          SizedBox(
            width: 14.w,
          )
        ],
        title: Text(
          'Product Detail',
          style:
              TextStyle(fontSize: FLargeSize2.sp, fontWeight: FontWeight.w600),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 10.h),
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  width: 260.w,
                  height: 295.h,
                ),
                Container(
                  width: 260.w,
                  height: 260.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(200.r),
                    color: Color(0xffF8E7DB),
                  ),
                ),
                Positioned(
                  bottom: 0.h,
                  left: 56.h,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8.r),
                    child: Image.network(
                      networkImage,
                      width: 150.w,
                      height: 281.h,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Smart Watch',
                      style: TextStyle(
                          fontSize: FLargeSize, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      'Unisex',
                      style: TextStyle(
                          fontSize: FsmallSize,
                          fontWeight: FontWeight.w400,
                          color: darkgreyTheme),
                    ),
                  ],
                ),
                Text(
                  '\$345.00',
                  style: TextStyle(
                    fontSize: FLargeSize,
                    fontWeight: FontWeight.w500,
                    color: brownTheme,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10.h,
            ),
            Row(
              children: [
                Icon(
                  Icons.star,
                  color: yellowTheme,
                ),
                Icon(
                  Icons.star,
                  color: yellowTheme,
                ),
                Icon(
                  Icons.star,
                  color: yellowTheme,
                ),
                Icon(
                  Icons.star,
                  color: yellowTheme,
                ),
                Icon(
                  Icons.star,
                  color: yellowTheme,
                ),
              ],
            ),
            SizedBox(
              height: 24.h,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Color',
                style: TextStyle(
                  fontSize: FLargeSize3,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            SizedBox(
              height: 24.h,
            ),
            Row(
              children: [
                Container(
                  width: 48.w,
                  height: 48.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.r),
                    color: whiteTheme,
                    border: Border.all(
                      width: 1,
                      color: brownTheme,
                    ),
                  ),
                  child: UnconstrainedBox(
                    child: Container(
                      width: 40.w,
                      height: 40.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.r),
                        color: brownTheme,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 15.w,
                ),
                Container(
                  width: 40.w,
                  height: 40.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.r),
                    color: Color(0xff23A4F7),
                  ),
                ),
                SizedBox(
                  width: 15.w,
                ),
                Container(
                  width: 40.w,
                  height: 40.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.r),
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  width: 15.w,
                ),
                Container(
                  width: 40.w,
                  height: 40.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.r),
                    color: darkgreyTheme,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'About',
                style: TextStyle(
                  fontSize: FLargeSize3,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
            Text(
              'Maecenas cursus magna vitae convallis congue. Vestibulum dignissim augue odio, congue rutrum magna gravida ac. Sed rhoncus eu arcu a tempus.',
              style: TextStyle(
                fontSize: FsmallSize,
                color: darkgreyTheme,
              ),
            ),
            SizedBox(
              height: 25.h,
            ),
            Container(
              width: 386.w,
              height: 48.h,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24.r),
                color: brownTheme,
              ),
              child: Text(
                'ADD TO CART',
                style: TextStyle(
                  color: whiteTheme,
                  fontSize: FsmallSize,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
