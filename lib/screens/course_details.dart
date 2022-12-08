import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:online_learning_app/widgets/course_details/course_content.dart';
import 'package:online_learning_app/widgets/course_details/course_details_steps.dart';
import 'package:online_learning_app/widgets/course_details/instructor_image.dart';
import 'package:scaffold_gradient_background/scaffold_gradient_background.dart';

class CourseDetails extends StatefulWidget {
  static const routeName = '/course-details';
  const CourseDetails({super.key});

  @override
  State<CourseDetails> createState() => _CourseDetailsState();
}

class _CourseDetailsState extends State<CourseDetails> {
  @override
  Widget build(BuildContext context) {
    return ScaffoldGradientBackground(
      gradient: LinearGradient(
        colors: [
          Color(0xffffb3e6),
          Colors.white,
          Colors.white,
          Colors.white,
        ],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      ),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        actions: [
          Icon(
            Icons.more_vert,
            color: Colors.black,
            size: 22,
          ),
        ],
        leading: Icon(
          Icons.arrow_back,
          color: Colors.black,
          size: 22,
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Photography Masterclass:A Complete Guide to Photography',
              style: TextStyle(
                color: Colors.brown,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            Gap(10),
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 10,
                    )
                  ]),
                  child: Icon(
                    Icons.info_rounded,
                    color: Colors.white,
                    size: 25,
                  ),
                ),
                Gap(10),
                Text(
                  'Last updated 18/03/2022',
                  style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  ),
                ),
                Gap(20),
                Container(
                  decoration: BoxDecoration(boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 10,
                    )
                  ]),
                  child: Icon(
                    Icons.language,
                    color: Colors.white,
                    size: 25,
                  ),
                ),
                Gap(10),
                Text(
                  'English',
                  style: TextStyle(
                    color: Colors.black87,
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            Gap(10),
            Container(
              width: 100,
              height: 22,
              padding: EdgeInsets.all(4),
              decoration: BoxDecoration(
                color: Colors.amber.shade50,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Text(
                'Best Instructors',
                style: TextStyle(
                  color: Colors.green,
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Gap(10),
            InstructorImage(),
            Gap(10),
            Text(
              'This Course Includes:',
              style: TextStyle(
                color: Colors.black,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            Gap(10),
            CourseDetailsSteps(step: '22 hours on-demand video'),
            CourseDetailsSteps(step: '63 articles'),
            CourseDetailsSteps(step: '31 downloadable resources'),
            CourseDetailsSteps(step: 'Full time access & video call and Chat'),
            CourseDetailsSteps(step: 'Certificate of Completion'),
            Text(
              'Course Content',
              style: TextStyle(
                color: Colors.black,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            CourseContent(
              title: 'Introduction',
            ),
            CourseContent(
              title: 'Pro Tip:Creating Depth with layer',
            ),
            CourseContent(
              title: 'Main features of Most Cameras',
            ),
          ],
        ),
      ),
    );
  }
}
