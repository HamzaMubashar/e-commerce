import 'package:ecommerce_app/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CartScreen extends StatelessWidget {
  CartScreen({super.key});

  final List<String> title = [
    'Wooden Coffee Table',
    'Wireless HeadPhone',
    'Leather Watch'
  ];
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
          'Cart',
          style:
              TextStyle(fontSize: FLargeSize2.sp, fontWeight: FontWeight.w600),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 14.w),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 400.h,
                child: ListView.builder(
                    padding: EdgeInsets.only(bottom: 15.h),
                    itemCount: title.length,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Dismissible(
                            key: Key(title[index]),
                            direction: DismissDirection.endToStart,
                            background: Container(
                              alignment: Alignment.centerRight,
                              padding: EdgeInsets.symmetric(horizontal: 20.w),
                              decoration: BoxDecoration(
                                color: greyTheme,
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Icon(Icons.delete_outlined, color: redTheme),
                                  SizedBox(width: 8.w),
                                  Text("Remove",
                                      style: TextStyle(
                                          color: redTheme,
                                          fontSize: FsmallSize.sp)),
                                ],
                              ),
                            ),
                            child: Container(
                              width: 386.w,
                              height: 119.h,
                              padding: EdgeInsets.all(14.w),
                              margin: EdgeInsets.all(1.w),
                              decoration: BoxDecoration(
                                color: whiteTheme,
                                borderRadius: BorderRadius.circular(8.r),
                                boxShadow: [
                                  BoxShadow(
                                    color: greyTheme,
                                    blurRadius: 2,
                                    spreadRadius: 1,
                                  ),
                                ],
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        title[index],
                                        style: TextStyle(
                                          fontSize: FLargeSize2.sp,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5.h,
                                      ),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.star,
                                            size: FLargeSize.sp,
                                            color: yellowTheme,
                                          ),
                                          Text(
                                            '(1267 reviews)',
                                            style: TextStyle(
                                              fontSize: FsmallSize.sp,
                                              color: darkgreyTheme,
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 5.h,
                                      ),
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                          '\$135.00',
                                          style: TextStyle(
                                              fontSize: FLargeSize3.sp,
                                              color: brownTheme),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Container(
                                            width: 25.w,
                                            height: 25.h,
                                            decoration: BoxDecoration(
                                              color: whiteTheme,
                                              border: Border.all(
                                                  width: 1.w, color: greyTheme),
                                              borderRadius:
                                                  BorderRadius.circular(20.r),
                                            ),
                                            child: Icon(
                                              Icons.add,
                                              size: FLargeSize.sp,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 5.h,
                                          ),
                                          Text(
                                            '1',
                                            style: TextStyle(
                                                fontSize: FLargeSize3.sp),
                                          ),
                                          SizedBox(
                                            height: 5.h,
                                          ),
                                          Container(
                                            width: 25.w,
                                            height: 25.h,
                                            decoration: BoxDecoration(
                                              color: whiteTheme,
                                              border: Border.all(
                                                  width: 1.w, color: greyTheme),
                                              borderRadius:
                                                  BorderRadius.circular(20.r),
                                            ),
                                            child: Icon(
                                              Icons.remove,
                                              size: FLargeSize.sp,
                                            ),
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        width: 20.w,
                                      ),
                                      ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(8.r),
                                        child: Image.network(
                                          networkImage,
                                          width: 84.w,
                                          height: 91.h,
                                          fit: BoxFit.cover,
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 15.h,
                          )
                        ],
                      );
                    }),
              ),
              SizedBox(
                height: 30.h,
              ),
              Container(
                width: 386.w,
                height: 184.h,
                margin: EdgeInsets.all(1.w),
                padding: EdgeInsets.all(14.w),
                decoration: BoxDecoration(
                  color: whiteTheme,
                  borderRadius: BorderRadius.circular(8.r),
                  boxShadow: [
                    BoxShadow(
                      color: greyTheme,
                      blurRadius: 2,
                      spreadRadius: 1,
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Select Item:',
                          style: TextStyle(
                            fontSize: FLargeSize2.sp,
                            color: darkgreyTheme,
                          ),
                        ),
                        Text(
                          '3',
                          style: TextStyle(
                            fontSize: FLargeSize3.sp,
                            fontWeight: FontWeight.w500,
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
                        Text(
                          'Subtotal:',
                          style: TextStyle(
                            fontSize: FLargeSize2.sp,
                            color: darkgreyTheme,
                          ),
                        ),
                        Text(
                          '\$589.00',
                          style: TextStyle(
                            fontSize: FLargeSize3.sp,
                            fontWeight: FontWeight.w500,
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
                        Text(
                          'Discount (20%):',
                          style: TextStyle(
                            fontSize: FLargeSize2.sp,
                            color: darkgreyTheme,
                          ),
                        ),
                        Text(
                          '\$178.00',
                          style: TextStyle(
                            fontSize: FLargeSize3.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    Divider(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Total:',
                          style: TextStyle(
                            fontSize: FLargeSize2.sp,
                            color: darkgreyTheme,
                          ),
                        ),
                        Text(
                          '\$471.00',
                          style: TextStyle(
                              fontSize: FLargeSize.sp,
                              fontWeight: FontWeight.w500,
                              color: brownTheme),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 30.h,
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
                    fontSize: FsmallSize.sp,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
