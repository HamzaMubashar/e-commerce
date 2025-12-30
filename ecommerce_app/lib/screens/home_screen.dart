import 'package:ecommerce_app/constant.dart';
import 'package:ecommerce_app/screens/category_screen.dart';
import 'package:ecommerce_app/widgets/all_scr.dart';
import 'package:ecommerce_app/widgets/electronic_scr.dart';
import 'package:ecommerce_app/widgets/fashion_scr.dart';
import 'package:ecommerce_app/widgets/funiture_scr.dart';
import 'package:ecommerce_app/widgets/shoes_scr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:buttons_tabbar/buttons_tabbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: Icon(Icons.menu),
        actions: [
          Icon(Icons.search),
          SizedBox(
            width: 14.w,
          )
        ],
        title: Text(
          'Home',
          style:
              TextStyle(fontSize: FLargeSize2.sp, fontWeight: FontWeight.w600),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 14.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
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
                      width: 70.w,
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
                        '30% discount on all home\ndecoration products',
                        style: TextStyle(
                            color: whiteTheme, fontSize: FLargeSize.sp),
                      ),
                      SizedBox(
                        height: 14.w,
                      ),
                      Container(
                        alignment: Alignment.center,
                        margin: EdgeInsets.zero,
                        width: 268.w,
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
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Category',
                  style: TextStyle(
                      fontSize: FLargeSize2.sp, fontWeight: FontWeight.w600),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => CategoryScreen()));
                  },
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
              height: 510.h,
              child: DefaultTabController(
                length: 5,
                child: Column(
                  children: <Widget>[
                    ButtonsTabBar(
                      physics: NeverScrollableScrollPhysics(),
                      contentPadding: EdgeInsets.all(12.w),
                      backgroundColor: brownTheme,
                      unselectedBackgroundColor: greyTheme,
                      unselectedLabelStyle:
                          TextStyle(color: Colors.black, fontSize: 13.sp),
                      labelStyle:
                          TextStyle(color: Colors.white, fontSize: 13.sp),
                      tabs: [
                        Tab(
                          text: "All",
                        ),
                        Tab(
                          text: "Electronics",
                        ),
                        Tab(
                          text: 'Fashion',
                        ),
                        Tab(
                          text: 'Shoes',
                        ),
                        Tab(
                          text: 'Furniture',
                        ),
                      ],
                    ),
                    Expanded(
                      child: TabBarView(
                        children: <Widget>[
                          AllScr(),
                          ElectronicScr(),
                          FashionScr(),
                          ShoesScr(),
                          FunitureScr(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
