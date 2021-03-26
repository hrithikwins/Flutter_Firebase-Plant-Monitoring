import 'package:firebase_storage_project/screens/past_data.dart';
import 'package:firebase_storage_project/widgets/humidity_widgets.dart';
import 'package:flutter/material.dart';

class HumidityPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          BlueButton(
              text: 'Past Data',
              onClicked: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PastDataPage(),
                  )),
              fontSizing: 10),
          DataWidget(
            heading: 'Your Environment Humidity',
            value: '34',
          ),
          DataWidget(
            heading: 'I need Humidity',
            value: '25 to 35',
          ),
          DataWidget(
            heading: 'Environment Temperature',
            value: '24',
          ),
          DataWidget(
            heading: 'I need Temperature',
            value: '20 - 24',
          ),
          BlueButton(
            text: 'Plant Picture',
            onClicked: () => null,
            fontSizing: 20.0,
          ),
        ],
      ),
    );
  }
}
