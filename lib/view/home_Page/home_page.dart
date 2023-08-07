
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic_plus/flutter_neumorphic.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:wilson_wings_design/utliz/colors.dart';
import 'package:wilson_wings_design/utliz/common_function.dart';
import 'package:wilson_wings_design/utliz/sizedbox.dart';
import 'package:wilson_wings_design/view/home_Page/widgets/card_widgets.dart';
import 'package:wilson_wings_design/view/home_Page/widgets/drawe_wdgets.dart';
import 'package:wilson_wings_design/view/home_Page/widgets/status_circle.dart';

class HomePage extends StatelessWidget {


  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {

     List<Widget> drawerOptions = [
      const DrawerWidget(
          imagePath: 'assets/images/bank.png', optionName: 'BranchX'),
      const DrawerWidget(
          imagePath: 'assets/images/ingots.png', optionName: 'X Gold'),
      const DrawerWidget(
          imagePath: 'assets/images/qr-code-scan (1).png', optionName: 'Scan & Pay'),
      const DrawerWidget(
          imagePath: 'assets/images/mail.png', optionName: 'Send Money'),
      const DrawerWidget(
          imagePath: 'assets/images/necklace.png', optionName: 'Jewelery'),
      const DrawerWidget(
          imagePath: 'assets/images/roulette.png', optionName: 'Spin Win'),
      const DrawerWidget(
          imagePath: 'assets/images/reward.png', optionName: 'Rewards'),
      const DrawerWidget(
          imagePath: 'assets/images/wallet.png', optionName: 'Wallet'),
      const DrawerWidget(
          imagePath: 'assets/images/health-insurance.png', optionName: 'Insurance'),
      const DrawerWidget(
          imagePath: 'assets/images/cash.png', optionName: 'Pay Bills'),
      const DrawerWidget(
          imagePath: 'assets/images/support.png', optionName: 'Support'),
      const DrawerWidget(
          imagePath: 'assets/images/passbook.png', optionName: 'Passbook'),
      const DrawerWidget(
          imagePath: 'assets/images/translate.png', optionName: 'Language')
    ];

    List<Widget>cardwidgets=[
   const  CardWidgets(),
   const  CardWidgets()
    ];
    GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
    return  Scaffold(
      
     backgroundColor:const Color.fromARGB(255,247,247,247),
     key: _scaffoldKey,
     
      drawer: Drawer(
        width: Adaptive.w(100),
        child: SafeArea(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(left: Adaptive.w(5.5)),
                width: Adaptive.w(100),
                height: Adaptive.h(8),
                decoration: const BoxDecoration(color: Colors.white),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset('assets/images/icons2.jpeg',
                        width: Adaptive.w(23), height: Adaptive.h(5.5)),
                    InkWell(
                      onTap: () {
                        _scaffoldKey.currentState!.closeDrawer();
                      },
                      child: Image.asset(
                        'assets/images/close.png',
                        width: Adaptive.w(23),
                        height: Adaptive.h(5.5),
                      ),
                    ),
                  ],
                ),
              ),
              sizedBoxHeight20,
              Expanded(
                child: GridView.builder(
                  padding: EdgeInsets.symmetric(
                      vertical: Adaptive.h(1), horizontal: Adaptive.w(5.5)),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisSpacing: Adaptive.h(3),
                      crossAxisSpacing: Adaptive.w(7),
                      crossAxisCount: 3),
                  itemBuilder: (context, index) => drawerOptions[index],
                  itemCount: drawerOptions.length,
                ),
              ),
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: Stack(
          children: [
            SizedBox(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    color: textWhite,
                    height: Adaptive.h(8),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        children: [
                  //        sizedW10,
                          InkWell(
                            onTap: () {
                              _scaffoldKey.currentState!.openDrawer();
                            },
                            child: SizedBox(
                              height: Adaptive.h(5),
                              child: const CircleAvatar(
                                backgroundColor: textWhite,
                                  backgroundImage: AssetImage("assets/images/icons4.jpeg"),
                                  radius: 19,
                                ),
                            ),
                          ),
                        sizedW10,
                          SizedBox(
                            height: 30,
                            width: 75,
                            child: Image.asset('assets/images/icons2.jpeg',fit: BoxFit.fill,),
                          ),
                          SizedBox(width: Adaptive.w(28),),
                     Stack(
                            children: [
                              CircleAvatar(
                                radius: 21,
                                backgroundColor: Colors.black,
                                child: CircleAvatar(
                                  radius: 18.3,
                                  backgroundColor: Colors.white,
                                  child: Image.asset('assets/images/icons3.jpeg',
                                      width: Adaptive.w(8),
                                      height: Adaptive.h(2.8)),
                                ),
                              ),
                              Positioned(
                                right: Adaptive.w(0.1),
                                child: const CircleAvatar(
                                  radius: 7.6,
                                  backgroundColor: Colors.red,
                                  child: CircleAvatar(
                                    radius: 2,
                                    backgroundColor: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                                  sizedW10,
                       SizedBox(
                        height: Adaptive.h(5),
                        child:const CircleAvatar(
                          radius: 25,
                          backgroundColor: textBlack,
                          child:   CircleAvatar(
                              backgroundColor: textWhite,
                              radius: 17,
                              child:  CircleAvatar(
                                backgroundColor:textWhite,
                                  backgroundImage: AssetImage("assets/images/icon1.jpeg"),
                                  radius: 14,
                                ),
                            ),
                        ),
                      )
                        ],
                      ),
                    ),
                  ),
                  StatusCircles(),
                //  sizedBoxHeight10,
                 Padding(
                   padding: const EdgeInsets.all(10),
                   child: SizedBox(
                    height: Adaptive.h(23),
                      child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                       separatorBuilder: (context, index) => sizedW20, itemCount:cardwidgets.length,
                       itemBuilder: (context, index) {
                        return const CardWidgets();
                       }
                        ),
                    ),
                 ),
                //  containerWidget("", "ramees")
                
               //   height: Adaptive.h(10),
               Row(
                mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   SizedBox(
                    height: 10,
                    width: 10,
                    child: CircleAvatar(
                      backgroundColor: Colors.pink.shade700,
                    )),
                    sizedW10,
                  const  SizedBox(
                    height: 10,
                    width: 10,
                    child: CircleAvatar(
                      backgroundColor:Colors.pink,
                      child: CircleAvatar(
                        backgroundColor: backgrounColor,
                        radius: 3,
                      ),
                    )),
                 ],
               ),
               sizedBoxHeight10,
                 Flexible(
                   child: Padding(
                     padding: const EdgeInsets.all(10),
                     child: GridView.count(
                             crossAxisCount: 3, // Number of columns in the grid
                             crossAxisSpacing: 20.0, // Spacing between columns
                             mainAxisSpacing: 15,
                             children: [
                               containerWidget('assets/images/ingots.png', "Gold"),
                                containerWidget('assets/images/qr-code-scan (1).png', 'Scan&Pay'),
                                 containerWidget('assets/images/necklace.png', 'jewellery'),
                                 containerWidget('assets/images/health-insurance.png', 'Insurance'),
                                 containerWidget('assets/images/mail.png', 'Refer&Earn'),
                                 containerWidget('assets/images/roulette.png', 'Spin Win'),
                                 containerWidget('assets/images/pay.png', 'Send Money'),
                                 containerWidget('assets/images/cash.png', 'Reacharge&bill'),
                                 containerWidget('assets/images/passbook.png', 'Passbook'),
                                
                             ],
                       ),
                   ),
                 ),
                 
                     
                      
                  
                ],
              ),
              
            ),
             Positioned(
                right: Adaptive.w(5),
              bottom: Adaptive.h(3),
                child: NeumorphicButton(
                    padding: const EdgeInsets.all(3),
                    style: const NeumorphicStyle(
                        color: backgrounColor,
                        shape: NeumorphicShape.convex,
                        intensity: 1,
                        depth: 10,
                        boxShape: NeumorphicBoxShape.circle()),
                    onPressed: () {},
                    child: Image.asset('assets/images/phone-call.png',
                        fit: BoxFit.fill, width: Adaptive.w(12))),
              ),   
          ],
        ),
        
      ),
      //  drawer:const NavigationDrawerPage() ,
      floatingActionButton: CircleAvatar(
        radius: 36,
        backgroundColor: const Color.fromARGB(255, 230, 106, 106),
        child: Image.asset('assets/images/magic-lamp.png', width: Adaptive.w(9)),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
       bottomNavigationBar: Container(
        height: Adaptive.h(10),
        decoration: const BoxDecoration(color: Colors.white),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Image.asset('assets/images/bank-card.png', width: Adaptive.w(7)),
              SizedBox(height: Adaptive.h(0.5)),
              const Text('CARDS',
                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold))
            ]),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                sizedBoxHeight10,
                Row(
                  children: [
                    SizedBox(width: Adaptive.w(7)),
                    const Text('XENIE',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                  ],
                ),
                sizedBoxHeight10,
                sizedBoxHeight15
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/images/user.png', width: Adaptive.w(7)),
                SizedBox(height: Adaptive.h(0.5)),
                const Text('MY PROFILE',
                    style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold))
              ],
            )
          ],
        ),
      ),
          
       );
    
      
  }
}
