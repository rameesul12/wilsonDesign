
import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:wilson_wings_design/utliz/sizedbox.dart';

import '../../../utliz/colors.dart';

class CardWidgets extends StatelessWidget {
  const CardWidgets({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FlipCard(  direction: FlipDirection.HORIZONTAL,
        speed: 500,
        flipOnTouch: true,
      front: Stack(
        children: [
         
          Container(
            height: Adaptive.h(22),
            width: Adaptive.w(75),
            decoration:  BoxDecoration(
               borderRadius: BorderRadius.circular(10),
              gradient: const LinearGradient(
                colors:[
                Color.fromARGB(255, 127, 160, 255),
                        Color.fromARGB(255, 84, 120, 222)
                ] )
            ),
            child:  Padding(
              padding: const EdgeInsets.all(14),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.start,
                 crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                 sizedBoxHeight10,
                 
                  //  padding: EdgeInsets.symmetric(horizontal: 10),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      //  SizedBox(width:Adaptive.w(1),),
                    Text("Namaste",style:TextStyle(color: textWhite,fontWeight:FontWeight.bold ),),
                      Text("ACCOUNT DETAILS",style:TextStyle(color: textWhite,fontWeight: FontWeight.w200),),
                    
                      ],
                    ),
                  
               
               const   Text("Sayeed",style:TextStyle(color: textWhite, fontWeight: FontWeight.bold),),
                  sizedBoxHeight10,
                  const  Text("Account Number",style:TextStyle(color: textWhite,fontSize: 10 ),),
               
               Row(
                 children: [
                   const   Text("201124432098678",style:TextStyle(color: textWhite, fontWeight: FontWeight.bold),),
                   sizedW10,
                   SizedBox(
                    height: Adaptive.h(2),
                    width: Adaptive.w(5),
                    child: Image.asset('assets/images/copy.png',fit: BoxFit.fill,),
                   )
                 ],
               ),
               sizedBoxHeight10,
                  const  Text("IFSC",style:TextStyle(color: textWhite, ),),
Row(
                 children: [
                   const   Text("201124432098678",style:TextStyle(color: textWhite, fontWeight: FontWeight.bold),),
                  sizedW10,
                   SizedBox(
                    height: Adaptive.h(2),
                    width: Adaptive.w(5),
                    child: Image.asset('assets/images/copy.png',fit: BoxFit.fill,),
                   )
                 ],
               ),                        ],
              ),

            ),
            
          ),
            Positioned(
            right: -50,
            top: 55,
                      child: CircleAvatar(
                        backgroundColor: backgrounColor,
                        radius: 40,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Column(
                            children: [
                              sizedBoxHeight20,
                              
                               
                                
                              Divider(color: textBlack,thickness: 2,),
                              Divider(color: textBlack,thickness: 2,height: 10,),
                              Divider(color: textBlack,thickness: 2,)
                            ],
                          ),
                        ),
                      ),
                    ),
        ],

      ),
       back:Stack(
        children: [
         
          Container(
            height: Adaptive.h(23),
            width: Adaptive.w(75),
            decoration:  BoxDecoration(
               borderRadius: BorderRadius.circular(10),
              gradient: const LinearGradient(
                colors:[
                Color.fromARGB(255, 127, 160, 255),
                        Color.fromARGB(255, 84, 120, 222)
                ] )
            ),
            child:  Padding(
              padding: const EdgeInsets.all(14),
              child: Column(
                
                // mainAxisAlignment: MainAxisAlignment.start,
                 crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  
                 sizedBoxHeight10,
                 
                  //  padding: EdgeInsets.symmetric(horizontal: 10),
                     Row(
                    //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      //  SizedBox(width:Adaptive.w(1),),
                  const  Text("Namaste",style:TextStyle(color: textWhite,fontWeight:FontWeight.bold ),),
                  sizedW30,
                  sizedW20,
                   const   Text("FULL KYC",style:TextStyle(color: textWhite,fontWeight: FontWeight.w200),),
                      SizedBox(
                        height: Adaptive.h(5,),
                        width: Adaptive.w(5),
                        child: Image.asset('assets/images/check.png'),
                      )
                    
                      ],
                    ),
                  
               
               const   Text("Sayeed",style:TextStyle(color: textWhite, fontWeight: FontWeight.bold),),
                  sizedBoxHeight10,
                  const  Text("Wallet Balance",style:TextStyle(color: textWhite,fontSize: 10 ),),
               
               Row(
                 children: [
                   const   Text("?XXXX",style:TextStyle(color: textWhite, fontWeight: FontWeight.bold),),
                   sizedW10,
                   SizedBox(
                    height: Adaptive.h(2),
                    width: Adaptive.w(5),
                    child: Image.asset('assets/images/eye.png',fit: BoxFit.fill,),
                   )
                 ],
               ),
                sizedBoxHeight10,
             //SizedBox(height: 10,),
               Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: Adaptive.h(4),
                    width: Adaptive.w(30),
                    child: ElevatedButton(onPressed: (){},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(31, 16, 5, 78),
                        padding: EdgeInsets.all(0),
                      shape: RoundedRectangleBorder(
                        
                        borderRadius: BorderRadius.circular(10)
                      )
                      )
                      ,
                     child: Text('Add Money',style: TextStyle(color: textWhite),)),
                  ),
                   SizedBox(
                    height: Adaptive.h(4),
                    width: Adaptive.w(30),
                    child: ElevatedButton(onPressed: (){},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: backgrounColor,
                        padding: EdgeInsets.all(0),
                      shape: RoundedRectangleBorder(
                        
                        borderRadius: BorderRadius.circular(10)
                      )
                      )
                      ,
                     child:const Text('Add Money',style: TextStyle(color: textBlack),)),
                  ) 
                ],
               ),
            
               
                                     ],
              ),

            ),
            
          ),
                 Positioned(
            right: -50,
            bottom: 0,
            top: -30,
                      child: CircleAvatar(
                        radius: 40,
                        backgroundColor: backgrounColor,
                        child: CircleAvatar(
                          backgroundColor: backgrounColor,
                          radius: 40,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Column(
                              children: [
                                sizedBoxHeight20,
                                       
                             const   Divider(color: textBlack,thickness: 2,),
                             const   Divider(color: textBlack,thickness: 2,height: 10,),
                             const   Divider(color: textBlack,thickness: 2,)
                              ],
                            ),
                          ),
                        ),
                      ),
                      
                    ),
                   
        ],

      ),
       );
  }
}
