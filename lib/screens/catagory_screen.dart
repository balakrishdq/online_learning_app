import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:online_learning_app/screens/course_list.dart';
import 'package:online_learning_app/widgets/category_screen/catagory_items.dart';
import 'package:online_learning_app/widgets/category_screen/search_bar.dart';
import 'package:online_learning_app/widgets/category_screen/single_card.dart';

class CatagoryScreen extends StatefulWidget {
  static const routeName = '/category-screen';
  const CatagoryScreen({super.key});

  @override
  State<CatagoryScreen> createState() => _CatagoryScreenState();
}

class _CatagoryScreenState extends State<CatagoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(right: 10, left: 10),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  height: 150,
                  width: 230,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Icon(
                          Icons.menu,
                          color: Colors.black,
                        ),
                      ),
                      Gap(10),
                      Text(
                        'Hello Joshua Michael',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 17,
                        ),
                      ),
                      Text(
                        'Find your Courses and Start Learn Today',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Stack(
                    children: [
                      Container(
                        height: 180,
                        padding: EdgeInsets.only(left: 20),
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.pink.shade50,
                              )
                            ],
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(20),
                                bottomRight: Radius.circular(20))),
                        child: Container(
                          margin: EdgeInsets.only(right: 20),
                          child: Column(
                            children: [
                              Container(
                                padding: EdgeInsets.only(
                                  top: 30,
                                ),
                                child: CircleAvatar(
                                  maxRadius: 18,
                                  backgroundColor: Colors.white,
                                  child: Icon(
                                    Icons.tune,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(top: 20),
                                child: CircleAvatar(
                                  backgroundImage:
                                      AssetImage('assets/images/profile.jpg'),
                                  maxRadius: 22,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        top: 155,
                        left: 24,
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                          maxRadius: 18,
                          child: Icon(
                            Icons.notifications,
                            color: Colors.black,
                            size: 15,
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            SearchBar(
              label: 'Search Course,Catagory etc',
              icon: Icons.search,
            ),
            Gap(20),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.only(left: 10),
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  maxWidth: MediaQuery.of(context).size.width * 1.5,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.of(context).pushNamed(CourseList.routeName);
                      },
                      child: CategoryItems(
                        categoryName: 'Design & IT',
                        image: 'assets/images/category-image-1.jpeg',
                      ),
                    ),
                    CategoryItems(
                      categoryName: 'Beautician',
                      image: 'assets/images/category-image-2.jpeg',
                    ),
                    CategoryItems(
                      categoryName: 'Cooking',
                      image: 'assets/images/category-image-3.jpeg',
                    ),
                    CategoryItems(
                      categoryName: 'Tailoring',
                      image: 'assets/images/category-image-4.jpeg',
                    ),
                    CategoryItems(
                      categoryName: 'Hacking',
                      image: 'assets/images/category-image-5.jpeg',
                    ),
                    CategoryItems(
                      categoryName: 'Network',
                      image: 'assets/images/category-image-1.jpeg',
                    ),
                  ],
                ),
              ),
            ),
            Gap(20),
            Row(
              children: [
                Text(
                  'Popular Courses',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
                Gap(10),
                Text(
                  '(View All)',
                  style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
            Gap(10),
            SingleCard(
              image: 'assets/images/card-image-1.jpg',
              title: 'Graphic Design Masterclass',
              description: 'Lorem epsum is simply dummy...',
              categoryName: 'Design',
              ratingValue: '3.0',
              ratingStarCount: 3,
              ratingCount: '1786',
              duration: '6.5 Hours',
              lectureCount: '12',
              level: 'Beginner',
            ),
            Gap(10),
            SingleCard(
              image: 'assets/images/card-image-2.jpg',
              title: 'Restaurent Style Recipe',
              description: 'There are many variations of..',
              categoryName: 'Cooking',
              ratingValue: '4.0',
              ratingStarCount: 4,
              ratingCount: '8786',
              duration: '12 Hours',
              lectureCount: '12',
              level: 'All level',
            ),
            Gap(10),
            SingleCard(
              image: 'assets/images/card-image-3.jpg',
              title: 'Western wear Stitching',
              description: 'Lorem epsum is dummy...',
              categoryName: 'Tailoring',
              ratingValue: '4.5',
              ratingStarCount: 4.5,
              ratingCount: '3456',
              duration: '4.2 Hours',
              lectureCount: '09',
              level: 'All level',
            ),
          ],
        ),
      ),
    );
  }
}
