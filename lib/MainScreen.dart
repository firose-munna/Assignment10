import 'package:assignment10/mode/LandscapeMode.dart';
import 'package:assignment10/mode/PortraitMode.dart';
import 'package:assignment10/widgets/OrientationWidget.dart';
import 'package:flutter/material.dart';



class MainScreen extends StatelessWidget {
  MainScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
        elevation: 6,
      ),
      body: OrientationWidget(
        portrait: PortraitMode(),
        landscape: LandScapeMode(),
      )
    );
  }
}
