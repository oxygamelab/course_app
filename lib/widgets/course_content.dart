import 'package:flutter/material.dart';
import '../core/constants.dart';

class CourseContent extends StatelessWidget {
  final String number;
  final double duration;
  final String title;
  final bool isDone;
  CourseContent({this.number, this.duration, this.title, this.isDone = false});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 30),
      child: Row(
        children: [
          Text(
            number,
            style: kHeadingTextStyle.copyWith(
              fontSize: 32,
              color: kTextColor.withOpacity(.15),
            ),
          ),
          SizedBox(width: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '${duration} mins',
                style: TextStyle(
                  color: kTextColor.withOpacity(.5),
                  fontSize: 16,
                ),
              ),
              Text(
                title,
                style: kSubtitleTextStyle.copyWith(
                  fontWeight: FontWeight.w600,
                  height: 1.5,
                ),
              ),
            ],
          ),
          Spacer(),
          Container(
            margin: EdgeInsets.only(left: 20),
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              color: kGreenColor.withOpacity(isDone ? 1 : .5),
              shape: BoxShape.circle,
            ),
            child: Icon(
              Icons.play_arrow,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
