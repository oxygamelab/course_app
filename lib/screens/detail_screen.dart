import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../core/constants.dart';
import '../core/best_seller_clipper.dart';
import '../widgets/course_content.dart';

class DetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            padding: EdgeInsets.only(bottom: 70),
            child: Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/ux_big.png'),
                      fit: BoxFit.fill,
                      alignment: Alignment.topRight,
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(left: 20, top: 50, right: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IconButton(
                              icon: SvgPicture.asset(
                                  'assets/icons/arrow-left.svg'),
                              color: Colors.grey,
                              onPressed: () => Navigator.of(context).pop(true),
                            ),
                            IconButton(
                              icon: SvgPicture.asset(
                                  'assets/icons/more-vertical.svg'),
                              color: Colors.grey,
                              onPressed: () => print('more..'),
                            ),
                          ],
                        ),
                        SizedBox(height: 30),
                        ClipPath(
                          clipper: BestSellerClipper(),
                          child: Container(
                            color: kBestSellerColor,
                            padding: EdgeInsets.only(
                                left: 10, top: 5, right: 20, bottom: 5),
                            child: Text(
                              'BestSeller'.toUpperCase(),
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 16),
                        Text(
                          'Design Thinking',
                          style: kHeadingTextStyle,
                        ),
                        SizedBox(height: 30),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                SvgPicture.asset('assets/icons/person.svg'),
                                SizedBox(width: 5),
                                Text('18k'),
                              ],
                            ),
                            SizedBox(width: 20),
                            Row(
                              children: [
                                SvgPicture.asset('assets/icons/star.svg'),
                                SizedBox(width: 5),
                                Text('4.8'),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 20),
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: '\$50',
                                style: kHeadingTextStyle.copyWith(
                                  fontSize: 32,
                                ),
                              ),
                              TextSpan(
                                text: ' \$70',
                                style: TextStyle(
                                  color: kTextColor.withOpacity(.5),
                                  decoration: TextDecoration.lineThrough,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 340),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50),
                    ),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Course Content',
                          style: kTitleTextStyle,
                        ),
                        SizedBox(height: 30),
                        CourseContent(
                          number: '01',
                          duration: 5.35,
                          title: 'Wecome to the Course',
                          isDone: true,
                        ),
                        CourseContent(
                          number: '02',
                          duration: 19.04,
                          title: 'Design Thinking - Intro',
                          isDone: true,
                        ),
                        CourseContent(
                          number: '03',
                          duration: 15.35,
                          title: "Design Thinking Process",
                        ),
                        CourseContent(
                          number: '04',
                          duration: 5.35,
                          title: "Customer Perspective",
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              width: double.infinity,
              height: 100,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50),
                ),
                boxShadow: [
                  BoxShadow(
                    color: kTextColor.withOpacity(.1),
                    offset: Offset(0, 4),
                    blurRadius: 50,
                  ),
                ],
              ),
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(14),
                    width: 80,
                    height: 56,
                    decoration: BoxDecoration(
                      color: Color(0xFFFFEDEE),
                      borderRadius: BorderRadius.circular(40),
                    ),
                    child: SvgPicture.asset('assets/icons/shopping-bag.svg'),
                  ),
                  SizedBox(width: 20),
                  Expanded(
                    child: Container(
                      height: 56,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: kBlueColor,
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: Text(
                        'Buy Now',
                        style: kSubtitleTextStyle.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
