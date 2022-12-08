import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:online_learning_app/screens/course_details.dart';
import 'package:online_learning_app/widgets/category_screen/search_bar.dart';
import 'package:online_learning_app/widgets/category_screen/single_card.dart';
import 'package:online_learning_app/widgets/course_list/category_logo.dart';
import 'package:online_learning_app/widgets/course_list/instructor_card.dart';

class CourseList extends StatefulWidget {
  static const routeName = "/course-list";
  const CourseList({super.key});

  @override
  State<CourseList> createState() => _CourseListState();
}

class _CourseListState extends State<CourseList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(
            Icons.arrow_back,
          ),
          color: Colors.black,
        ),
        title: Padding(
          padding: const EdgeInsets.only(right: 10),
          child: Text(
            'All IT & Software Courses',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: CircleAvatar(
              backgroundImage: AssetImage(
                'assets/images/profile.jpg',
              ),
            ),
          )
        ],
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 10,
            right: 10,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SearchBar(
                label: 'Search Course, Category etc',
                icon: Icons.tune,
              ),
              Gap(20),
              Text(
                'Popular Instructors',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Gap(10),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: ConstrainedBox(
                  constraints: BoxConstraints(
                    maxWidth: MediaQuery.of(context).size.width * 2.1,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InstructorCard(
                        image: 'assets/images/instructor-1.jpg',
                        name: 'Stephane Marek',
                        description: 'Hardware & Networking',
                        rating: '4.5',
                        courses: '12 Courses',
                        students: '1.9K Students',
                      ),
                      InstructorCard(
                        image: 'assets/images/instructor-2.jpg',
                        name: 'Niklaus Mik',
                        description: 'Hardware & Networking',
                        rating: '4.5',
                        courses: '12 Courses',
                        students: '1.9K Students',
                      ),
                      InstructorCard(
                        image: 'assets/images/instructor-3.jpg',
                        name: 'Stephane Marek',
                        description: 'Hardware & Networking',
                        rating: '4.5',
                        courses: '12 Courses',
                        students: '1.9K Students',
                      ),
                    ],
                  ),
                ),
              ),
              Gap(15),
              Text(
                'Improve Your Skills / Sub-Categories',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Gap(15),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: ConstrainedBox(
                  constraints: BoxConstraints(
                    maxWidth: MediaQuery.of(context).size.width * 1.4,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CategoryLogo(
                        image: 'assets/images/logo-1.jpg',
                        title1: 'Network &',
                        title2: 'Security',
                        color: Colors.blue.shade100,
                      ),
                      CategoryLogo(
                        image: 'assets/images/logo-2.jpg',
                        title1: 'Software',
                        title2: 'Developer',
                        color: Colors.pink.shade50,
                      ),
                      CategoryLogo(
                        image: 'assets/images/logo-1.jpg',
                        title1: 'Network &',
                        title2: 'Security',
                        color: Colors.blue.shade100,
                      ),
                    ],
                  ),
                ),
              ),
              Gap(15),
              Text(
                'Top IT Courses',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Gap(15),
              InkWell(
                onTap: () {
                  Navigator.of(context).pushNamed(CourseDetails.routeName);
                },
                child: SingleCard(
                  image: 'assets/images/card-image-4.jpg',
                  title: 'Photoshop CC 2020',
                  description: 'It is long established..',
                  categoryName: 'Design',
                  ratingValue: '4.5',
                  ratingStarCount: 4.5,
                  ratingCount: '8786',
                  duration: '12 Hours',
                  lectureCount: '12',
                  level: 'Intermediate',
                ),
              ),
              Gap(10),
              SingleCard(
                image: 'assets/images/card-image-5.jpg',
                title: 'Wordpress for Beginners',
                description: 'Lorem epsum is dummy...',
                categoryName: 'Design',
                ratingValue: '4',
                ratingStarCount: 4,
                ratingCount: '2100',
                duration: '2.8 Hours',
                lectureCount: '09',
                level: 'Beginner',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
