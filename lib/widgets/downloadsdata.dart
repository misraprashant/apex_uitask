import 'package:flutter/material.dart';

class DownloadListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        buildInfoTile('Email ID', 'example@example.com'),
        buildDivider(),
        buildInfoTile('Contact', '+1234567890'),
        buildDivider(),
        buildInfoTile('DOB', '01-01-1990', hasIcon: true),
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
    );
  }

  Widget buildInfoTile(String title, String content, {bool hasIcon = false}) {
    return ListTile(
      title: Row(
        children: [
          if (hasIcon) Icon(Icons.date_range, color: Colors.blue),
          if (hasIcon) SizedBox(width: 8),
          Text(title),
        ],
      ),
      subtitle: Text(content),
    );
  }

  Widget buildDivider() {
    return Divider(
      height: 20,
      thickness: 2,
    );
  }

  Widget buildAadharTile() {
    return ListTile(
      title: Row(
        children: [
          Icon(Icons.credit_card, color: Colors.blue),
          SizedBox(width: 8),
          Text('Aadhar No'),
        ],
      ),
      subtitle: Row(
        children: [
          buildAadharBox(),
          SizedBox(width: 8),
          buildAadharBox(),
          SizedBox(width: 8),
          buildAadharBox(),
        ],
      ),
    );
  }

  Widget buildAadharBox() {
    return Container(
      width: 50,
      height: 40,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
      ),
      child: TextField(
        textAlign: TextAlign.center,
        maxLength: 4,
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
          counterText: '',
          border: InputBorder.none,
        ),
      ),
    );
  }
}
