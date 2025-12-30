import 'package:ecommerce_app/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoryScreen extends StatelessWidget {
  CategoryScreen({super.key});

  List<String> item = [
    'Bag',
    'Watch',
    'Shoes',
    'Jewelry',
    'Sports',
    'Music',
    'Gift',
    'Plant',
    'Phone',
    'Furniture',
    'Cosmetic',
    'Hobby'
  ];

  List<String> icons = [
    'assets/bag.png',
    'assets/watch.png',
    'assets/shoes.png',
    'assets/jewelry.png',
    'assets/sports.png',
    'assets/music.png',
    'assets/gift.png',
    'assets/plant.png',
    'assets/phone.png',
    'assets/furniture.png',
    'assets/cosmetic.png',
    'assets/hobby.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: Icon(Icons.arrow_back),
        actions: [
          Icon(Icons.search),
          SizedBox(
            width: 14.w,
          )
        ],
        title: Text(
          'Category',
          style:
              TextStyle(fontSize: FLargeSize2.sp, fontWeight: FontWeight.w600),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 14.w),
        child: Column(
          children: [
            Container(
              width: 386.w,
              height: 160.h,
              padding: EdgeInsets.all(16.sp),
              decoration: BoxDecoration(
                color: brownTheme,
                borderRadius: BorderRadius.circular(8.r),
              ),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8.r),
                    child: Image.network(
                      networkImage,
                      width: 124.w,
                      height: 128.h,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(
                    width: 14.w,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '15% discount on all\n women\'s shoes',
                        style: TextStyle(
                            color: whiteTheme, fontSize: FLargeSize.sp),
                      ),
                      SizedBox(
                        height: 14.w,
                      ),
                      Container(
                        alignment: Alignment.center,
                        margin: EdgeInsets.zero,
                        width: 214.w,
                        height: 36.h,
                        decoration: BoxDecoration(
                          color: whiteTheme.withOpacity(0.23),
                          borderRadius: BorderRadius.circular(18.r),
                        ),
                        child: Text(
                          'GET NOW',
                          style: TextStyle(
                              color: whiteTheme, fontSize: FsmallSize.sp),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            SizedBox(
              height: 590.h,
              child: GridView.builder(
                padding: EdgeInsets.all(2.w),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 10.w,
                  mainAxisSpacing: 10.h,
                  childAspectRatio: 0.9,
                ),
                itemCount: 12,
                itemBuilder: (context, index) {
                  return Container(
                    width: 118.w,
                    height: 120.h,
                    decoration: BoxDecoration(
                      color: index == 4 ? brownTheme : whiteTheme,
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
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 44.w,
                          height: 44.h,
                          decoration: BoxDecoration(
                            color: index == 4
                                ? whiteTheme.withOpacity(0.23)
                                : greyTheme,
                            borderRadius: BorderRadius.circular(8.r),
                          ),
                          child: UnconstrainedBox(
                            child: Image.asset(
                              icons[index],
                              width: 22.w,
                              height: 26.h,
                              color: index == 4 ? whiteTheme : darkgreyTheme,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Text(
                          item[index],
                          style: TextStyle(
                              fontSize: FsmallSize,
                              fontWeight: FontWeight.w500,
                              color: index == 4 ? whiteTheme : Colors.black),
                        )
                      ],
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
