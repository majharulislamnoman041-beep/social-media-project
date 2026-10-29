import 'package:flutter/material.dart';
import 'package:progress_dialog_null_safe/progress_dialog_null_safe.dart';

class MyAppN extends StatelessWidget {
  const MyAppN({super.key});

  @override
  Widget build(BuildContext context) {
    final ProgressDialog pr = ProgressDialog(
      context,
      type: ProgressDialogType.normal,
      isDismissible: true,
      showLogs: true,
    );

    pr.style(
      message: 'Downloading file...',
      borderRadius: 10.0,
      backgroundColor: Colors.white,
      progressWidget: CircularProgressIndicator(),
      elevation: 10.0,
      insetAnimCurve: Curves.easeInOut,
      progress: 0.0,
      maxProgress: 100.0,
      progressTextStyle: TextStyle(
        color: Colors.black,
        fontSize: 13.0,
        fontWeight: FontWeight.w400,
      ),
      messageTextStyle: TextStyle(
        color: Colors.black,
        fontSize: 19.0,
        fontWeight: FontWeight.w600,
      ),
    );

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
        title: const Text("UTC TEST", textAlign: TextAlign.start),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.white,
            backgroundColor: Colors.green, // text color
          ),
          onPressed: () async {
            await pr.show();
            await Future.delayed(Duration(seconds: 2));
            pr.update(
              progress: 50.0,
              message: "Please wait...",
              progressWidget: Container(
                padding: EdgeInsets.all(8.0),
                child: CircularProgressIndicator(),
              ),
              maxProgress: 100.0,
              progressTextStyle: TextStyle(
                color: Colors.black,
                fontSize: 13.0,
                fontWeight: FontWeight.w400,
              ),
              messageTextStyle: TextStyle(
                color: Colors.black,
                fontSize: 19.0,
                fontWeight: FontWeight.w600,
              ),
            );
            await Future.delayed(Duration(seconds: 5));
            await pr.hide();
          },
          child: const Text("Show Progress Dialog"),
        ),
      ),
    );
  }
}
