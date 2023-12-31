import 'package:apex_ui/helper/sized_box.dart';
import 'package:apex_ui/screen/uploaddocscreen.dart';
import 'package:apex_ui/utils/color_resources.dart';
import 'package:apex_ui/utils/style_constants.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final TextEditingController _dobController = TextEditingController();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
    );

    if (picked != null && picked != _dobController.text) {
      setState(() {
        _dobController.text =
            "${picked.day.toString().padLeft(2, '0')}-${picked.month.toString().padLeft(2, '0')}-${picked.year}";
      });
    }
  }

  List<TextEditingController> controllers =
      List.generate(3, (index) => TextEditingController());
  List<FocusNode> focusNodes = List.generate(3, (index) => FocusNode());
  @override
  void dispose() {
    for (var controller in controllers) {
      controller.dispose();
    }
    for (var focusNode in focusNodes) {
      focusNode.dispose();
    }
    super.dispose();
  }

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
                        'My Profile',
                        style: TextStyle(
                          color: Colors.white,
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
            top: 130,
            bottom: 500,
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16),
                  topRight: Radius.circular(16),
                ),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: InkWell(
                            onTap: () {
                              Navigator.of(context).pushReplacement(
                                MaterialPageRoute(
                                    builder: (context) => UploadScreen()),
                              );
                            },
                            child: Icon(Icons.edit_calendar_outlined)),
                      ),
                    ],
                  ),
                  20.heightBox,
                  Text(
                    "Ravi Singh",
                    style: headingName,
                  ),
                  8.heightBox,
                  Text(
                    "Dc202F51",
                    style: profileLabelText,
                  )
                ],
              ),
            ),
          ),
          Positioned.fill(
            top: 300,
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
                child: ListView(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Container(),
                        buildInfoTile('Email ID', 'example@example.com'),
                        buildDivider(),
                        buildInfoTile('Contact', '+1234567890'),
                        buildDivider(),
                        buildInfoTile('DOB', _dobController.text.trim(),
                            hasIcon: true),
                        buildDivider(),
                        buildInfoTile('Employee Code', 'E12345'),
                        buildDivider(),
                        buildInfoTile('Designation', 'Software Developer'),
                        buildDivider(),
                        buildInfoTile('Address', '123 Main St, City'),
                        buildDivider(),
                        buildAadharTile(),
                        buildDivider(),
                        buildInfoTile('DL Number', 'DL123456'),
                        buildDivider(),
                        buildInfoTile('UAN Number', 'UAN123456'),
                        buildDivider(),
                        buildInfoTile('My UID', 'UID123456'),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: 100,
            left: MediaQuery.of(context).size.width / 2.5,
            child: Container(
              width: 80,
              height: 80,
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
          ),
        ],
      ),
    );
  }

  Widget buildInfoTile(String title, String content, {bool hasIcon = false}) {
    return ListTile(
      title: Row(
        children: [
          Text(title),
          const Spacer(),
          if (hasIcon)
            GestureDetector(
                onTap: () {
                  _selectDate(context);
                },
                child: const Icon(Icons.date_range,
                    color: ColorResources.britnyblue)),
          if (hasIcon) const SizedBox(width: 8),
        ],
      ),
      subtitle: Text(content),
    );
  }

  Widget buildDivider() {
    return const Divider(
      height: 20,
      thickness: 2,
    );
  }

  Widget buildAadharTile() {
    return ListTile(
      title: const Row(
        children: [
          Text('Aadhar No'),
        ],
      ),
      subtitle: Row(
        children: [
          buildAadharBox(),
          const SizedBox(width: 8),
          buildAadharBox(),
          const SizedBox(width: 8),
          buildAadharBox(),
        ],
      ),
    );
  }

  Widget buildAadharBox() {
    return Container(
      width: 80,
      height: 40,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
      ),
      child: const TextField(
        textAlign: TextAlign.center,
        maxLength: 6,
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
          counterText: '',
          border: InputBorder.none,
        ),
      ),
    );
  }

  void selectdate() {}
}
