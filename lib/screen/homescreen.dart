import 'package:apex_ui/helper/sized_box.dart';
import 'package:apex_ui/screen/leaverequest.dart';
import 'package:apex_ui/screen/mychart.dart';
import 'package:apex_ui/screen/profilepage.dart';
import 'package:apex_ui/utils/color_resources.dart';
import 'package:apex_ui/utils/style_constants.dart';
import 'package:apex_ui/widgets/punchinpayslip.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              color: ColorResources.themecolor,
              height: 120,
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 12.0),
                      child: Text(
                        'Apex',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    const Leaverequestscreen(),
                              ),
                            );
                          },
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Icon(
                              Icons.notifications_outlined,
                              color: Colors.white,
                              size: 28,
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const ProfilePage(),
                              ),
                            );
                          },
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Icon(
                              Icons.person_outline_sharp,
                              color: Colors.white,
                              size: 28,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned.fill(
            top: 100,
            bottom: 0,
            child: Container(
              decoration: BoxDecoration(
                color: ColorResources.WHITE,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16),
                  topRight: Radius.circular(16),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: ListView(
                  children: [
                    Card(
                      color: ColorResources.britnyblue,
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Profile', style: HeadingBoldWhite),
                                20.heightBox,
                                Text(
                                  'Employee Name',
                                  style: subHeadingBoldWhite,
                                ),
                                5.heightBox,
                                Text(
                                  'Ravi Singh',
                                  style: BoldWhite,
                                ),
                                Text(
                                  'Employee ID',
                                  style: subHeadingBoldWhite,
                                ),
                                5.heightBox,
                                Text(
                                  'Dc202F51',
                                  style: BoldWhite,
                                ),
                                5.heightBox,
                                Text(
                                  'Company Name',
                                  style: subHeadingBoldWhite,
                                ),
                                5.heightBox,
                                Text(
                                  '18pixels',
                                  style: BoldWhite,
                                ),
                              ],
                            ),
                            Container(
                              width: 70,
                              height: 70,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: ColorResources.WHITE,
                                  width: 3.0,
                                ),
                              ),
                              child: ClipOval(
                                child: Image.asset(
                                  'assets/profileimg.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Center(
                      child: Text(
                        'Employee Present Attendance Graph',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      height: 500,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        color: Colors.white,
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('15 April - 21 April'),
                                ElevatedButton.icon(
                                  onPressed: () {
                                    // Add your onPressed logic here
                                  },
                                  icon: Icon(
                                    Icons.calendar_month,
                                    color: ColorResources.britnyblue,
                                  ),
                                  label: Text(
                                    "Date Filter",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        color: ColorResources.britnyblue),
                                  ),
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.white,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 200,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            child: BarGraph(),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 42.0),
                            // child: Row(
                            //   children: [
                            //     Text('M'),
                            //     36.widthBox,
                            //     Text('T'),
                            //     35.widthBox,
                            //     Text('W'),
                            //     33.widthBox,
                            //     Text('T'),
                            //     36.widthBox,
                            //     Text('F'),
                            //     36.widthBox,
                            //     Text('S'),
                            //     36.widthBox,
                            //     Text('S'),
                            //   ],
                            // ),
                          ),
                          Attendencepayslip(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
