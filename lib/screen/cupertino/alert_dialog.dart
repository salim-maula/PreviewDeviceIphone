import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:io';

class AlertDialogOne extends StatelessWidget {
  const AlertDialogOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cuppertino"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return Platform.isIOS
                          ? CupertinoAlertDialog(
                              title: Text("Do u want to exit"),
                              content: Text("Are u sure to exit this app"),
                              actions: [
                                TextButton(
                                  onPressed: () {},
                                  child: Text('No'),
                                ),
                                TextButton(
                                  onPressed: () {},
                                  child: Text('Yes'),
                                ),
                              ],
                            )
                          : AlertDialog(
                              title: Text("Do u want to exit"),
                              content: Text("Are u sure to exit this app"),
                              actions: [
                                TextButton(
                                  onPressed: () {},
                                  child: Text('No'),
                                ),
                                TextButton(
                                  onPressed: () {},
                                  child: Text('Yes'),
                                ),
                              ],
                            );
                    });
              },
              child: Text("Alert Dialog"),
            ),
            ElevatedButton(
              onPressed: () {
                Platform.isAndroid
                    ? showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(2000),
                        lastDate: DateTime(2050))
                    : showCupertinoModalPopup(
                        context: context,
                        builder: (context) {
                          return Container(
                            height: MediaQuery.of(context).size.height * 0.2,
                            color: Colors.white,
                            child: CupertinoDatePicker(
                              onDateTimeChanged: (dateTime) {
                              },
                              initialDateTime: DateTime.now()
                            ),
                          );
                        });
              },
              child: Text(
                "Date Picker",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
