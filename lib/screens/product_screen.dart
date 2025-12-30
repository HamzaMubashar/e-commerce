import 'package:ecommerce_app/constant.dart';
import 'package:ecommerce_app/screens/product_details_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: Icon(
          Icons.arrow_back,
        ),
        actions: [
          Stack(
            children: [
              SizedBox(
                width: 25.w,
                height: 25.h,
              ),
              Icon(Icons.shopping_cart_outlined),
              Positioned(
                right: 0.h,
                top: 0.h,
                child: Container(
                  width: 7.w,
                  height: 7.h,
                  decoration: BoxDecoration(
                    color: redTheme,
                    borderRadius: BorderRadius.circular(5.r),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            width: 14.w,
          ),
        ],
        title: Text(
          'Popular Products',
          style:
              TextStyle(fontSize: FLargeSize2.sp, fontWeight: FontWeight.w600),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(
          top: 10.h,
          bottom: 0.h,
          left: 14.w,
          right: 14.w,
        ),
        child: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ProductDetailsScreen(),
              ),
            );
          },
          child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 15.w,
                mainAxisSpacing: 15.h,
                childAspectRatio: 0.71,
              ),
              padding: EdgeInsets.only(bottom: 10.h),
              itemCount: 6,
              itemBuilder: (context, index) {
                return Container(
                  width: 185.w,
                  height: 264.h,
                  padding: EdgeInsets.all(14.w),
                  margin: EdgeInsets.all(1.w),
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
                          color: index == 2 ? redTheme : greyTheme,
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
                );
              }),
        ),
      ),
    );
  }
}
