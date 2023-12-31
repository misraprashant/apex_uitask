import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void showToast({required bool isError, required String message}) {
  Fluttertoast.showToast(
    msg: message,
    backgroundColor: isError ? Colors.red : Colors.white,
    textColor: isError ? Colors.white : Colors.black,
    fontSize: 16.0,
    gravity: ToastGravity.BOTTOM,
    toastLength: Toast.LENGTH_SHORT,
    timeInSecForIosWeb: 1,
  );
}

void showErrorSnackBar(BuildContext context, message) {
  final snackBar = SnackBar(
    content: Text(
      message,
      style: const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    ),
    backgroundColor: Colors.red,
    duration: const Duration(seconds: 3),
  );
  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}
