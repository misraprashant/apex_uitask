import 'package:apex_ui/helper/gradientbar.dart';
import 'package:apex_ui/helper/sized_box.dart';
import 'package:apex_ui/helper/statusbargradient.dart';
import 'package:apex_ui/screen/applyleavescreen.dart';
import 'package:apex_ui/utils/color_resources.dart';
import 'package:apex_ui/utils/style_constants.dart';
import 'package:flutter/material.dart';

class Leaverequestscreen extends StatefulWidget {
  const Leaverequestscreen({super.key});

  @override
  State<Leaverequestscreen> createState() => _LeaverequestscreenState();
}

class _LeaverequestscreenState extends State<Leaverequestscreen> {
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
              height: 150,
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 12.0),
                      child: Text(
                        'Leave Request',
                        style: TextStyle(
                          color: Colors.white70,
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const Row(
                      children: [],
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
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16),
                  topRight: Radius.circular(16),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Expanded(
                      child: ListView(
                        children: [
                          Column(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Icon(
                                        Icons.calendar_month_outlined,
                                        size: 30,
                                        color: Colors.blue,
                                      ),
                                      Text(
                                        'Annual Leave',
                                        style: TextStyle(
                                            fontSize: 24,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      Container(
                                        width: 80,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(16),
                                            color: Color.fromARGB(
                                                255, 247, 223, 7)),
                                        child: Padding(
                                          padding: const EdgeInsets.all(4.0),
                                          child: Center(
                                            child: Text(
                                              "Pending",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 16),
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                  SizedBox(height: 20),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('18-21 Dec 2023',
                                          style: buttonTextStyle),
                                      Text(
                                        '4 Day',
                                        style: TextStyle(
                                            fontSize: 18, color: Colors.blue),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 10),
                                  SizedBox(height: 10),
                                  GradientBar(percentage: 60),
                                  SizedBox(height: 10),
                                  Text('7 Annual Leave Remaining'),
                                  SizedBox(height: 20),
                                  SizedBox(height: 20),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Icon(
                                        Icons.person_2_outlined,
                                        size: 30,
                                        color: Colors.grey,
                                      ),
                                      20.widthBox,
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Relief Staff:',
                                            style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.w500,
                                                color: Colors.grey.shade400),
                                          ),
                                          Text(
                                            'Rishikesh Mishra',
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w400),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  20.heightBox,
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Icon(
                                        Icons.edit_outlined,
                                        size: 30,
                                        color: Colors.grey,
                                      ),
                                      20.widthBox,
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Reason',
                                            style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.w500,
                                                color: Colors.grey.shade400),
                                          ),
                                          Text(
                                            'Personal Reason',
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w400),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 20),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Icon(
                                        Icons.mode_comment_outlined,
                                        size: 30,
                                        color: Colors.grey,
                                      ),
                                      20.widthBox,
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Additional Comment',
                                            style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.w500,
                                                color: Colors.grey.shade400),
                                          ),
                                          Text(
                                            'N/A',
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w400),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 20),
                                  Divider(),
                                  Column(children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'Approval Process',
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.grey.shade400),
                                        ),
                                        Text(
                                          'Rishikesh Mishra',
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w400),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 20),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        ApprovalItem(
                                            status: 'Approved',
                                            level: 'Level 1'),
                                        ApprovalItem(
                                            status: 'Approved',
                                            level: 'Level 2'),
                                        ApprovalItem(
                                            status: 'Pending',
                                            level: 'Level 3'),
                                      ],
                                    ),
                                    SizedBox(height: 20),
                                    StatusBar(levels: [
                                      'Level 1',
                                      'Level 2',
                                      'Level 3'
                                    ], currentLevel: 'Level 1'),
                                    SizedBox(height: 10),
                                  ]),
                                  SizedBox(
                                    height: 30,
                                  ),
                                  Divider(),
                                  SizedBox(
                                    height: 30,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      ElevatedButton(
                                        style: ButtonStyle(
                                          backgroundColor:
                                              MaterialStatePropertyAll(
                                                  Color.fromARGB(
                                                      255, 240, 192, 177)),
                                          fixedSize: MaterialStateProperty.all(
                                              Size(160, 30)),
                                          shape: MaterialStateProperty.all(
                                            RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                            ),
                                          ),
                                        ),
                                        onPressed: () {},
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            SizedBox(width: 5),
                                            Text('Cancel Request'),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        width: 40,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 20,
            right: 20,
            child: CircleAvatar(
              backgroundColor: Colors.blue,
              radius: 20,
              child: FloatingActionButton(
                backgroundColor: Colors.blue,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ApplyLeaveScreen(),
                    ),
                  );
                },
                tooltip: 'Add',
                child: Icon(Icons.add),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ApprovalItem extends StatelessWidget {
  final String status;
  final String level;

  ApprovalItem({required this.status, required this.level});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('$status'),
        Text(' $level'),
      ],
    );
  }
}
