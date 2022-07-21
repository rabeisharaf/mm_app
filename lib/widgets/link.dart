import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class LinkText extends StatelessWidget {
  final String url;
  final String text;
  Color color;
  Color background;

  LinkText({this.url, this.text, this.color, this.background});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: background,
      padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
      child: Center(
        child: RichText(
          text:
              TextSpan(style: TextStyle(fontSize: 30, color: color), children: [
            TextSpan(
                text: text,
                recognizer: TapGestureRecognizer()
                  ..onTap = () async {
                    await launch(url);
                  }),
          ]),
        ),
      ),
    );
  }
}
