import 'package:apex_ui/screen/downloadscreen.dart';
import 'package:flutter/material.dart';

class Attendencepayslip extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ElevatedButton(
          style: ButtonStyle(
            backgroundColor:
                const MaterialStatePropertyAll(Color.fromARGB(255, 247, 207, 174)),
            fixedSize: MaterialStateProperty.all(Size(160, 60)),
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
            ),
          ),
          onPressed: () {
            // Add your button 1 logic here
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.camera_alt_outlined),
              SizedBox(width: 5),
              Text('Punch\nAttendance'),
            ],
          ),
        ),
        ElevatedButton(
          style: ButtonStyle(
            backgroundColor:
                MaterialStatePropertyAll(Color.fromARGB(255, 247, 207, 174)),
            fixedSize: MaterialStateProperty.all(Size(160, 60)),
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
            ),
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const Downloadscreen(),
              ),
            );
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.download),
              SizedBox(width: 5),
              Text('Download\nPayslip'),
            ],
          ),
        ),
      ],
    );
  }
}
