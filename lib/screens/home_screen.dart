import 'package:course_app/core/constants.dart';
import 'package:course_app/models/category.dart';
import '../screens/detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/svg.dart';

class HomeScreen extends StatelessWidget {
  Widget buildCategories(BuildContext context, int index) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (_) => DetailScreen(),
        ),
      ),
      child: Container(
        padding: EdgeInsets.all(20),
        height: index.isEven ? 200 : 240,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          image: DecorationImage(
            image: AssetImage(categories[index].imageUrl),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              categories[index].name,
              style: kTitleTextStyle,
            ),
            Text(
              '${categories[index].numOfCourses} Courses',
              style: TextStyle(
                color: kTextColor.withOpacity(.5),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(left: 20, top: 50, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SvgPicture.asset('assets/icons/menu.svg'),
                CircleAvatar(
                  child: Image.asset('assets/images/user.png'),
                ),
              ],
            ),
            SizedBox(height: 30),
            Text('Hi Volkan', style: kHeadingTextStyle),
            Text('Find a course you want to learn',
                style: kSubheadingTextStyle),
            Container(
              margin: EdgeInsets.symmetric(vertical: 30),
              padding: EdgeInsets.symmetric(vertical: 16, horizontal: 20),
              height: 60,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xFFF5F5F7),
                borderRadius: BorderRadius.circular(40),
              ),
              child: Row(
                children: [
                  SvgPicture.asset('assets/icons/search.svg'),
                  SizedBox(width: 16),
                  Text(
                    'Seacrh for anything',
                    style: TextStyle(
                      fontSize: 18,
                      color: Color(0xFFA0A5BD),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  'Categories',
                  style: kTitleTextStyle,
                ),
                Text(
                  'See All',
                  style: kSubtitleTextStyle.copyWith(
                    color: kBlueColor,
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),
            Expanded(
              child: StaggeredGridView.countBuilder(
                itemCount: categories.length,
                crossAxisCount: 2,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
                staggeredTileBuilder: (index) => StaggeredTile.fit(1),
                itemBuilder: buildCategories,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
