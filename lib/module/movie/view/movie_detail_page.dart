import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:movie_app_arizd/module/home/view/home_page.dart';
import 'package:movie_app_arizd/theme/colors.dart';
import 'package:movie_app_arizd/theme/font.dart';
import 'package:remixicon/remixicon.dart';
import 'package:sizer/sizer.dart';

class MovieDetailPage extends StatelessWidget {
  const MovieDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: 100.h,
            width: 100.w,
            child: Image.asset(
              'assets/image/luca_poster.jpg',
              fit: BoxFit.cover,
            ),
          ),
          GestureDetector(
            onTap: () {
              Get.to(HomePage());
            },
            child: Container(
              margin: EdgeInsets.symmetric(
                horizontal: 5.w,
                vertical: 10.h,
              ),
              child: Icon(
                Remix.arrow_left_s_line,
                color: whiteColor,
              ),
            ),
          ),
          Positioned(
            bottom: 50,
            right: 50,
            left: 50,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                child: Column(
                  children: [
                    Text(
                      'Luca',
                      style: defaultTextStyle.copyWith(
                          fontSize: 20.sp, color: whiteColor),
                    ),
                    SizedBox(height: 2.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text('2021',
                            style:
                                defaultTextStyle.copyWith(color: whiteColor)),
                        Text('|',
                            style:
                                defaultTextStyle.copyWith(color: whiteColor)),
                        Text('Animation ',
                            style:
                                defaultTextStyle.copyWith(color: whiteColor)),
                        Text('|',
                            style:
                                defaultTextStyle.copyWith(color: whiteColor)),
                        Text('1h 34m',
                            style: defaultTextStyle.copyWith(color: whiteColor))
                      ],
                    ),
                    SizedBox(height: 1.h),
                    RatingBar.builder(
                      initialRating: 3,
                      minRating: 1,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                      itemBuilder: (context, _) => Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      onRatingUpdate: (rating) {
                        print(rating);
                      },
                    ),
                    SizedBox(height: 1.h),
                    Icon(
                      Remix.play_circle_fill,
                      size: 80.sp,
                      color: secondaryColor.withOpacity(0.5),
                    ),
                    SizedBox(
                      height: 1.h,
                    ),
                    Text('Show More',
                        style: defaultTextStyle.copyWith(color: whiteColor)),
                    Icon(
                      Remix.arrow_down_s_line,
                      color: whiteColor,
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
