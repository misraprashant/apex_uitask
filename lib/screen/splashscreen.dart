import 'package:apex_ui/screen/loginpage.dart';
import 'package:flutter/material.dart';
class SplshScreen extends StatelessWidget {
  const SplshScreen({super.key});
  @override
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => LoginPage()),
      );
    });
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
        color: Colors.white,
        image: DecorationImage(
          image: AssetImage('assets/splashapex.png'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
