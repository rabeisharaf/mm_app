import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:mm_app/widgets/link.dart';
import 'package:url_launcher/link.dart';
import 'package:url_launcher/url_launcher.dart';

var appBar = AppBar(
  backgroundColor: Colors.blueGrey,
  title: Text(
    'Contact Us',
    textAlign: TextAlign.center,
    style: TextStyle(
      color: Colors.white,
    ),
  ),
);

class MyPage extends StatelessWidget {
  const MyPage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      body: Center(
        child: Container(
          color: Colors.blueGrey[50],
          padding: const EdgeInsets.fromLTRB(20, 100, 20, 0),
          child: Column(
            children: [
              LinkText(
                url: "https://www.facebook.com",
                text: "facebook",
                color: Colors.white,
                background: Colors.blue[900],
              ),
              SizedBox(
                height: 20,
              ),
              LinkText(
                url: "https://mail.google.com/mail/u/0/#inbox",
                text: "Gmail",
                color: Colors.white,
                background: Colors.red[700],
              ),
              SizedBox(
                height: 20,
              ),
              LinkText(
                url: "https://www.linkedin.com/in/rabei-madian-184883223/",
                text: "LinkedIn",
                color: Colors.white,
                background: Colors.blue[700],
              ),
              SizedBox(
                height: 20,
              ),
              LinkText(
                url: "https://github.com/rabeisharaf",
                text: "GitHub",
                color: Colors.white,
                background: Colors.black87,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
