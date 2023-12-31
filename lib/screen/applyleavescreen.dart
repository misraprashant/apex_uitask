import 'package:apex_ui/helper/sized_box.dart';
import 'package:apex_ui/utils/color_resources.dart';
import 'package:apex_ui/utils/style_constants.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:table_calendar/table_calendar.dart';

class ApplyLeaveScreen extends StatefulWidget {
  const ApplyLeaveScreen({Key? key}) : super(key: key);

  @override
  State<ApplyLeaveScreen> createState() => _ApplyLeaveScreenState();
}

class _ApplyLeaveScreenState extends State<ApplyLeaveScreen> {
  LeaveSatus leaveSatus = LeaveSatus.Pending;
  late DateTime _selectedDate;
  late DateTime _focusedDay;
  CalendarFormat _calendarFormat = CalendarFormat.week;
  bool _isCalendarOpen = false;
  // List of leave reasons
  List<String> leaveReasons = [
    'Vacation',
    'Sick Leave',
    'Personal Leave',
    'Other'
  ];

  // Selected leave reason
  String selectedLeaveReason = 'Vacation';
  @override
  void initState() {
    super.initState();
    _selectedDate = DateTime.now();
    _focusedDay = DateTime.now();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        width: double.infinity,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 0),
          child: Container(
            height: 55,
            decoration: const BoxDecoration(
              color: ColorResources.themecolor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
            ),
          ),
        ),
      ),
      backgroundColor: ColorResources.themecolor,
      appBar: AppBar(
        titleTextStyle: const TextStyle(color: Colors.white, fontSize: 20),
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: ColorResources.themecolor,
        centerTitle: true,
        title: const Text('Leave Request'),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Center(
                child: Text(
                  'Calendar',
                  style: heading2Bold,
                ),
              ),
              GestureDetector(
                onVerticalDragUpdate: (details) {
                  if (details.primaryDelta! > 0) {
                    setState(() {
                      _calendarFormat = CalendarFormat.month;
                      _isCalendarOpen = false;
                    });
                  }
                },
                child: TableCalendar(
                  firstDay: DateTime(2000),
                  lastDay: DateTime(2097),
                  focusedDay: _focusedDay,
                  calendarFormat: _calendarFormat,
                  startingDayOfWeek: StartingDayOfWeek.sunday,
                  selectedDayPredicate: (day) {
                    return isSameDay(_selectedDate, day);
                  },
                  onDaySelected: (selectedDay, focusedDay) {
                    setState(() {
                      _selectedDate = selectedDay;
                      _focusedDay = focusedDay;
                    });
                  },
                  onFormatChanged: (d) {
                    setState(() {
                      _calendarFormat = _isCalendarOpen
                          ? CalendarFormat.week
                          : CalendarFormat.month;
                      _isCalendarOpen = !_isCalendarOpen;
                    });
                  },
                  onPageChanged: (focusedDay) {
                    // Add your logic for page change (e.g., changing calendar format)
                  },
                ),
              ),
              const SizedBox(height: 16),
              GestureDetector(
                onTap: () {
                  setState(() {
                    _calendarFormat = _isCalendarOpen
                        ? CalendarFormat.week
                        : CalendarFormat.month;
                    _isCalendarOpen = !_isCalendarOpen;
                  });
                },
                child: ColoredBox(
                  color: Colors.transparent,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/dropdown.png',
                        width: 150,
                      )
                    ],
                  ),
                ),
              ),
              10.heightBox,
              Text(
                DateFormat('dd MMM yyyy').format(_selectedDate),
                style: subHeadingBold.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Colors.grey.shade600,
                ),
              ),
              5.heightBox,
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12.0, vertical: 0),
                  child: DropdownButtonFormField(
                    padding: const EdgeInsets.all(0),
                    decoration: const InputDecoration(
                      hintText: 'Select Leave Reason',
                      border: InputBorder.none,
                    ),
                    value: selectedLeaveReason,
                    items: leaveReasons.map((reason) {
                      return DropdownMenuItem(
                        value: reason,
                        child: Text(reason),
                      );
                    }).toList(),
                    onChanged: (value) {
                      setState(() {
                        selectedLeaveReason = value!;
                      });
                    },
                  ),
                ),
              ),
              10.heightBox,
              Text(
                'List and Status of Leave',
                style: subHeadingBold.copyWith(
                  fontWeight: FontWeight.w900,
                  color: Colors.grey.shade600,
                ),
              ),
              LeaveStatusWidget(
                leaveSatus: LeaveSatus.Pending,
                active: leaveSatus == LeaveSatus.Pending,
                onTap: () {
                  setState(() {
                    leaveSatus = LeaveSatus.Pending;
                  });
                },
              ),
              10.heightBox,
              LeaveStatusWidget(
                leaveSatus: LeaveSatus.Approved,
                active: leaveSatus == LeaveSatus.Approved,
                onTap: () {
                  setState(() {
                    leaveSatus = LeaveSatus.Approved;
                  });
                },
              ),
              10.heightBox,
              LeaveStatusWidget(
                leaveSatus: LeaveSatus.Cancel,
                active: leaveSatus == LeaveSatus.Cancel,
                onTap: () {
                  setState(() {
                    leaveSatus = LeaveSatus.Cancel;
                  });
                },
              ),
              25.heightBox,
              Center(
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 185, 115, 89),
                      shape: const ContinuousRectangleBorder(),
                      elevation: 0,
                    ),
                    onPressed: () {},
                    child: const Text(
                      'Request Leave',
                      style: TextStyle(color: Colors.white),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}

enum LeaveSatus { Pending, Approved, Cancel }

class LeaveStatusWidget extends StatelessWidget {
  const LeaveStatusWidget({
    super.key,
    required this.leaveSatus,
    required this.active,
    required this.onTap,
  });
  final LeaveSatus leaveSatus;
  final bool active;
  final Function() onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 45,
        width: double.infinity,
        decoration: BoxDecoration(
          color: active
              ? leaveSatus == LeaveSatus.Pending
                  ? Colors.orange
                  : leaveSatus == LeaveSatus.Approved
                      ? Colors.green
                      : leaveSatus == LeaveSatus.Cancel
                          ? Colors.red
                          : null
              : null,
          border: Border.all(
            color: !active ? Colors.grey : Colors.white,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Row(
          children: [
            active
                ? const Icon(
                    Icons.check_circle,
                    color: Colors.white,
                  )
                : Icon(
                    Icons.circle,
                    color: leaveSatus == LeaveSatus.Pending
                        ? Colors.orange
                        : leaveSatus == LeaveSatus.Approved
                            ? Colors.green
                            : leaveSatus == LeaveSatus.Cancel
                                ? Colors.red
                                : null,
                  ),
            10.widthBox,
            Text(
              leaveSatus.name,
              style: active
                  ? priceText.copyWith(color: Colors.white)
                  : subHeadingBold,
            )
          ],
        ),
      ),
    );
  }
}
