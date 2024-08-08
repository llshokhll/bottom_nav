import 'package:bottom_nav/utls/my_selected_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Home Screen"),
            CupertinoSwitch(
              value: isSelected,
              activeColor: Colors.green,
              trackColor: Colors.red,
              onChanged: (bool value) {
                setState(() {
                  isSelected = value;
                });
                print(value);
              },
            ),
            Switch(
              value: isSelected,
              activeColor: Colors.white,
              activeTrackColor: Colors.green,
              inactiveTrackColor: Colors.red,
              inactiveThumbColor: Colors.white,
              //trackOutlineColor: WidgetStateProperty.all(Colors.black),
              // trackColor: WidgetStateProperty.all(Colors.black),
              onChanged: (bool value) {
                setState(() {
                  isSelected = value;
                });
                print(value);
              },
            ),
            MySelectableItem(
                isSelected: true,
                onChanged: (value) {
                  print(value);
                })
          ],
        ),
      ),
    );
  }
}
