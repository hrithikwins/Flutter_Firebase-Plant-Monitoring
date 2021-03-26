import "package:flutter/material.dart";

class DataWidget extends StatelessWidget {
  final String heading;
  final String value;
  const DataWidget({
    Key key,
    @required this.heading,
    @required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - 50.0,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.all(10.0),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.all(10.0),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.blue[100],
                    borderRadius: BorderRadius.all(
                      Radius.circular(50.0),
                    ),
                  ),
                  child: Text(
                    '$heading',
                    style: TextStyle(fontSize: 25.0),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    padding: EdgeInsets.all(10.0),
                    alignment: Alignment.center,
                    width: 100.0,
                    decoration: BoxDecoration(
                      color: Colors.blue[100],
                      borderRadius: BorderRadius.all(
                        Radius.circular(20.0),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('$value '),
                        Text(' C'),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          //The box which shows the temperature
        ],
      ),
    );
  }
}

class BlueButton extends StatelessWidget {
  final String text;
  final VoidCallback onClicked;
  final double fontSizing;
  const BlueButton({
    Key key,
    @required this.text,
    @required this.onClicked,
    @required this.fontSizing,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          padding: EdgeInsets.all(5.0),
          margin: EdgeInsets.all(5.0),
          alignment: Alignment.centerLeft,
          child: TextButton(
            child: Container(
              padding: EdgeInsets.all(5.0),
              decoration: BoxDecoration(
                color: Colors.blue[100],
                borderRadius: BorderRadius.all(
                  Radius.circular(15.0),
                ),
              ),
              child: Text(
                '$text',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: fontSizing,
                ),
              ),
            ),
            onPressed: onClicked,
          ),
        ),
      ),
    );
  }
}
