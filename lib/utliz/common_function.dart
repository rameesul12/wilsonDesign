

import 'package:flutter_neumorphic_plus/flutter_neumorphic.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:wilson_wings_design/utliz/colors.dart';
import 'package:wilson_wings_design/utliz/sizedbox.dart';


containerWidget(String image,String tittle){
  return Neumorphic(
    style:const NeumorphicStyle(
              shape: NeumorphicShape.concave,
              depth: 7,
              intensity: 0.9,
              lightSource: LightSource.topLeft,
              color:  Color.fromARGB(255,247,247,247),
  
    ),
    
    child: 
       Container(
        height: 100,
        width:100,
        decoration: BoxDecoration(
          
          borderRadius: BorderRadius.circular(10)
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height:Adaptive.h(5),
              width: Adaptive.w(6),
             child:  Image.asset(image,fit: BoxFit.fill,)),
             sizedBoxHeight15,
        Text(tittle,style:const TextStyle(color: textBlack,fontSize: 10),)
          ],
        ),
       )
  );
}