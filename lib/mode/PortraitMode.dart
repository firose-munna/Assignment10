import 'package:flutter/material.dart';

import '../ImageGrid.dart';

class PortraitMode extends StatelessWidget {
  const PortraitMode({super.key});


  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.sizeOf(context);

    return SingleChildScrollView(
      child: Center(
        child: Column(
          children: [
            CircleAvatar(
              radius: screenSize.width/2,
              backgroundColor: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(8), // Border radius
                child: ClipOval(
                    child: Image.network(
                        'https://th.bing.com/th/id/OIP.kJC9n5LQKQsU0qZ-dvLP8wHaHa?pid=ImgDet&rs=1')),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only( bottom: 10),
              child: Text(
                "Firose Munna",
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 26),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, bottom: 5),
              child: Text(
                "I like to learn constantly. I'm currently working on Mobile Development. As mobile app devleoper I use Flutter which is a framework for cross platform native app development and I really love it.",
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
                textAlign: TextAlign.justify,
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, bottom: 5),
              child: ImgGrid()
            ),

          ],
        ),
      ),
    );
  }
}
