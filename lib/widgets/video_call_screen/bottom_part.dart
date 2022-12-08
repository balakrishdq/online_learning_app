import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class BottomPart extends StatelessWidget {
  const BottomPart({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        padding: EdgeInsets.all(10),
        height: 260,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
          color: Color(0xffffffff),
        ),
        child: Column(
          children: [
            Text(
              'Today 19-08-2021',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 17,
                fontWeight: FontWeight.w600,
              ),
            ),
            Gap(10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  height: 60,
                  width: 270,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade200,
                        )
                      ]),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Jasmine',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 24,
                        ),
                      ),
                      Text(
                        'Lorem epsum is simply dummy...',
                        style: TextStyle(
                          color: Colors.black54,
                          fontSize: 18,
                        ),
                      )
                    ],
                  ),
                ),
                Gap(10),
                Stack(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage(
                        'assets/images/profile.jpg',
                      ),
                    ),
                    Positioned(
                      bottom: 8,
                      left: 30,
                      child: CircleAvatar(
                        backgroundColor: Colors.green,
                        maxRadius: 5,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Gap(4),
            Text(
              'Aug 19, 09:17 AM',
              style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.w700,
              ),
            ),
            Gap(10),
            Container(
              padding: EdgeInsets.only(left: 10),
              child: Row(
                children: [
                  Stack(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage(
                          'assets/images/instructor-5.jpg',
                        ),
                      ),
                      Positioned(
                        bottom: 8,
                        left: 30,
                        child: CircleAvatar(
                          backgroundColor: Colors.green,
                          maxRadius: 5,
                        ),
                      ),
                    ],
                  ),
                  Gap(10),
                  Text(
                    'Joshua Michael is Typing...',
                    style: TextStyle(
                      color: Colors.black87,
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                    ),
                  )
                ],
              ),
            ),
            Gap(10),
            Container(
              padding: EdgeInsets.all(10),
              height: 60,
              width: double.infinity,
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade50,
                  blurRadius: 10,
                )
              ]),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.sentiment_satisfied_alt_rounded,
                  ),
                  suffixIcon: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.camera_alt_outlined,
                      ),
                      Icon(
                        Icons.mic,
                      )
                    ],
                  ),
                  label: Text(
                    'Type your message...',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 17,
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
