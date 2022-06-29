import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:movie_app_arizd/module/home/widgets/card_movie_widgets.dart';
import 'package:movie_app_arizd/module/movie/view/movie_detail_page.dart';
import 'package:movie_app_arizd/theme/colors.dart';
import 'package:movie_app_arizd/theme/font.dart';
import 'package:remixicon/remixicon.dart';
import 'package:sizer/sizer.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 6.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    child: Icon(Remix.user_2_line),
                  ),
                  Text(
                    'Movie App Arizd',
                    style: defaultTextStyle.copyWith(
                        fontSize: 14.sp,
                        color: primaryColor,
                        fontWeight: FontWeight.bold),
                  ),
                  Icon(
                    Remix.download_line,
                    color: primaryColor,
                  )
                ],
              ),
              SizedBox(
                height: 3.h,
              ),
              GestureDetector(
                onTap: () {
                  Get.to(MovieDetailPage());
                },
                child: Container(
                  height: 20.h,
                  width: 100.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: primaryColor,
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      'assets/image/luca.jpeg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 3.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Channel',
                    style: defaultTextStyle,
                  ),
                  Text(
                    'See all',
                    style: defaultTextStyle.copyWith(color: primaryColor),
                  )
                ],
              ),
              SizedBox(
                height: 2.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Image.asset('assets/image/disney.png'),
                    padding:
                        EdgeInsets.symmetric(horizontal: 2.w, vertical: 1.h),
                    height: 10.h,
                    width: 28.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: whiteColor),
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.to(MovieDetailPage());
                    },
                    child: Container(
                      child: Image.asset('assets/image/pixar.png'),
                      padding:
                          EdgeInsets.symmetric(horizontal: 2.w, vertical: 1.h),
                      height: 10.h,
                      width: 28.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: whiteColor),
                    ),
                  ),
                  Container(
                    child: Image.asset("assets/image/marvel.png"),
                    padding:
                        EdgeInsets.symmetric(horizontal: 2.w, vertical: 1.h),
                    height: 10.h,
                    width: 28.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: whiteColor),
                  ),
                ],
              ),
              SizedBox(
                height: 2.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'New',
                    style: defaultTextStyle,
                  ),
                  Text(
                    'See all',
                    style: defaultTextStyle.copyWith(color: primaryColor),
                  )
                ],
              ),
              SizedBox(height: 2.h),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    CardMovieWidgets(
                      title: "moana",
                      duration: '1h 43m',
                      rating: '9.5',
                      image: 'assets/image/moana.JPG',
                    ),
                    CardMovieWidgets(
                      title: "Encanto",
                      duration: '2h 43m',
                      rating: '9',
                      image: 'assets/image/encanto.jpg',
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
