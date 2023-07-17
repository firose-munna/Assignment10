import 'package:flutter/material.dart';

class ImgGrid extends StatelessWidget {
  const ImgGrid({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate:
      const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 8,
        mainAxisSpacing: 8,
      ),
      itemCount: 6,
      itemBuilder: (context, index) {
        return Image.network(
          'https://fiverr-res.cloudinary.com/t_profile_original,q_auto,f_auto/attachments/profile/photo/6523ec68eb8285e2c5dad7c4346f2d71-1664047962397/fdbf11ca-9d24-484c-b612-314d7263dbeb.jpg',
        );
      },
    );
  }
}
