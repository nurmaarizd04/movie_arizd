import 'package:flutter/material.dart';
import 'package:movie_app_arizd/theme/colors.dart';
import 'package:movie_app_arizd/theme/font.dart';
import 'package:remixicon/remixicon.dart';
import 'package:sizer/sizer.dart';

class CardMovieWidgets extends StatelessWidget {
  final String? title;
  final String? duration;
  final String? rating;
  final String? image;

  const CardMovieWidgets(
      {Key? key, this.title, this.duration, this.rating, this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 3.w),
      height: 27.h,
      width: 45.w,
      padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 2.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: whiteColor,
      ),
      child: Column(
        children: [
          Container(
            child: ClipRRect(
              child: Image.asset(
                image!,
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(20),
            ),
            height: 12.h,
            width: 100.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: primaryColor,
            ),
          ),
          SizedBox(height: 2.h),
          Row(
            children: [
              Text(
                title!,
                style: defaultTextStyle,
              )
            ],
          ),
          SizedBox(
            height: 1.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                duration!,
                style: defaultTextStyle,
              ),
              CircleAvatar(
                child: Icon(
                  Remix.play_circle_fill,
                ),
              ),
              Text(
                rating!,
                style: defaultTextStyle,
              ),
              Icon(
                Remix.star_fill,
                color: yelowColor,
                size: 13.sp,
              )
            ],
          )
        ],
      ),
    );
  }
}
