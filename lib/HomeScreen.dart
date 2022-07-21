import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

import 'misc/colors.dart';
import 'navpages_login_contact/main_page.dart';
import 'navpages_test_data/SensorsScreen.dart';
import 'main.dart';
import 'widgets/app_large_txt.dart';
import 'widgets/app_txt.dart';
import 'widgets/responsive_button.dart';

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

// ignore: must_be_immutable
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: appBar,
      body: App(),
    );
  }
}

class App extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _AppState();
}

class _AppState extends State<App> {
  List images = ["welcome-two.png", "welcome-two.png"];
  List header = [
    """Health Care 
monitoring""",
    "About Us"
  ];
  List text = ["", "Monitoring Health Care"];
  List info = [
    "",
    "Provision Of Health-Related Services Using A Network Of Context-Aware Intelligent Agent",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        scrollDirection: Axis.vertical,
        itemCount: images.length,
        itemBuilder: (_, index) {
          return Container(
            width: double.maxFinite,
            height: double.maxFinite,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("img/" + images[index]), fit: BoxFit.cover),
            ),
            child: Container(
              margin: EdgeInsets.only(top: 150, left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppLargeText(
                        text: header[index],
                      ),
                      AppText(
                        text: text[index],
                        size: 28,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: 250,
                        child: AppText(
                          text: info[index],
                          color: AppColors.textColor2,
                          size: 14,
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      MaterialButton(
                        padding: EdgeInsets.all(0),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MainPage()));
                        },
                        child: ResponsiveButton(
                          width: 120,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: List.generate(2, (indexDots) {
                      return Container(
                        margin: EdgeInsets.only(bottom: 2),
                        width: 8,
                        height: index == indexDots ? 25 : 8,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: index == indexDots
                                ? AppColors.mainColor
                                : AppColors.mainColor.withOpacity(0.3)),
                      );
                    }),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
