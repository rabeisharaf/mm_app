import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// bluetooth

var appBar = AppBar(
  backgroundColor: Colors.white,
  title: Text(
    'Health Care Monitoring',
    textAlign: TextAlign.center,
    style: TextStyle(
      color: Colors.black,
    ),
  ),
);

class SensorsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      body: App(),
    );
  }
}

class App extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _AppState();
}

class _AppState extends State<App> {
  var Temperature = 0;
  var Pressure = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blueGrey[50],
        width: double.infinity,
        padding: EdgeInsets.all(100.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              children: [
                Container(
                  child: Text(
                    "Temperature",
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.w700,
                      letterSpacing: 1,
                      shadows: <Shadow>[
                        Shadow(
                            offset: Offset(0, 5),
                            blurRadius: 9,
                            color: Colors.blueGrey)
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  child: Text(
                    '${Temperature}',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w700,
                      letterSpacing: 1,
                      shadows: <Shadow>[
                        Shadow(
                            offset: Offset(0, 5),
                            blurRadius: 9,
                            color: Colors.blueGrey)
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 100,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  child: Text(
                    "pressure",
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.w700,
                      letterSpacing: 1,
                      shadows: <Shadow>[
                        Shadow(
                            offset: Offset(0, 5),
                            blurRadius: 9,
                            color: Colors.blueGrey)
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  child: Text(
                    "${Pressure}",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w700,
                      letterSpacing: 1,
                      shadows: <Shadow>[
                        Shadow(
                            offset: Offset(0, 5),
                            blurRadius: 9,
                            color: Colors.blueGrey)
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
