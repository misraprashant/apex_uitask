import 'package:apex_ui/utils/color_resources.dart';
import 'package:flutter/material.dart';

class UploadScreen extends StatefulWidget {
  const UploadScreen({super.key});

  @override
  State<UploadScreen> createState() => _UploadScreenState();
}

class _UploadScreenState extends State<UploadScreen> {
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
                        'Documents',
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
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Container(),
                              buildInfoTile('DOB', _dobController.text.trim(),
                                  hasIcon: true),
                              buildDivider(),
                              buildInfoTile(
                                  'Designation', 'Software Developer'),
                              buildDivider(),
                              buildInfoTile('Address', '123 Main St, City'),
                              buildDivider(),
                              buildAadharTile(),
                              buildDivider(),
                              buildDltile(),
                              buildDivider(),
                              buildInfoTile('UAN Number', 'UAN123456'),
                              buildDivider(),
                              buildInfoTile('My UID', 'UID123456'),
                            ],
                          ),
                        ],
                      ),
                    ),
                    ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(
                            Color.fromARGB(255, 240, 192, 177)),
                        fixedSize: MaterialStateProperty.all(Size(160, 30)),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                      ),
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.upload),
                          SizedBox(width: 5),
                          Text('Upnload File'),
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
      height: 10,
      thickness: 1,
    );
  }

  Widget buildAadharTile() {
    return ListTile(
      title: const Row(
        children: [
          Text('Aadhar No'),
        ],
      ),
      subtitle: Column(
        children: [
          Row(
            children: [
              buildAadharBox(),
              const SizedBox(width: 8),
              buildAadharBox(),
              const SizedBox(width: 8),
              buildAadharBox(),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          uploadadharimage()
        ],
      ),
    );
  }

  Widget buildDltile() {
    return ListTile(
      title: const Row(
        children: [
          Text('DL Number'),
        ],
      ),
      subtitle: Column(
        children: [
          Row(
            children: [
              buildDlbox(),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          uploadDlimage()
        ],
      ),
    );
  }

  Widget buildDlbox() {
    return Container(
      width: 300,
      height: 40,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade300),
      ),
      child: const TextField(
        textAlign: TextAlign.center,
        maxLength: 16,
        decoration: InputDecoration(
          counterText: '',
          border: InputBorder.none,
        ),
      ),
    );
  }

  Widget buildAadharBox() {
    return Container(
      width: 97,
      height: 40,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade300),
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

  Widget uploadadharimage() {
    return Padding(
      padding: const EdgeInsets.only(right: 2.0),
      child: Container(
        color: Color.fromARGB(255, 215, 213, 213),
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // First row
            Text(
              'Upload Adhar Image',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 16.0),

            // Second row
            Center(
              child: Image.asset(
                'assets/Screencloud.png', // Replace with your asset path
                width: 40,
                height: 40,
              ),
            ),
            SizedBox(height: 16.0),

            // Third row
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(
                    Color.fromARGB(255, 122, 167, 178)),
                fixedSize: MaterialStateProperty.all(Size(120, 30)),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
              ),
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(width: 5),
                  Text('Upnload File'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget uploadDlimage() {
    return Padding(
      padding: const EdgeInsets.only(right: 2.0),
      child: Container(
        color: Color.fromARGB(255, 215, 213, 213),
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // First row
            Text(
              'Upload DL image',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 16.0),

            // Second row
            Center(
              child: Image.asset(
                'assets/Screencloud.png', // Replace with your asset path
                width: 40,
                height: 40,
              ),
            ),
            SizedBox(height: 16.0),

            // Third row
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(
                    Color.fromARGB(255, 122, 167, 178)),
                fixedSize: MaterialStateProperty.all(Size(120, 30)),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
              ),
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(width: 5),
                  Text('Upnload File'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
