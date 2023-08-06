

import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:wilson_wings_design/utliz/colors.dart';
import 'package:wilson_wings_design/utliz/sizedbox.dart';

class StatusCircles extends StatelessWidget {
 final List<String> image=[
    'assets/images/buisiness_man.jpg',
    'assets/images/circle_avatar.jpg',
    'assets/images/baby.jpg',
    'assets/images/foodball_images.jpg',
    'assets/images/baby.jpg'
  ];
 final List<String> name=[
    '#kaahani',
    '#winner',
    '#bikashbabu',
    '#gold',
    '#update'
  ];
   StatusCircles({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: SizedBox(
        height: Adaptive.h(16),
        width: Adaptive.w(100),
      //  color: textBlack,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemCount:image.length ,
        separatorBuilder: (context, index) => sizedW20,
          itemBuilder:(context, index) {
            return  Column(
              children: [
                sizedBoxHeight20,
                CircleAvatar(
                  backgroundColor: const Color.fromARGB(255, 125, 139, 212),
                  radius: 37,
                  child: CircleAvatar(
                    radius: 35,
                    backgroundImage: AssetImage(image[index]),
                  ),
                ),
                Text(name[index],style:const TextStyle(color: textBlack),)
              ],
            );
          }, ),
        
      ),
    );
  }
}
