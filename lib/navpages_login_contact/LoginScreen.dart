import 'package:flutter/material.dart';
import 'package:mm_app/navpages_test_data/main_page.dart';
import '../navpages_test_data/SensorsScreen.dart';
import '../main.dart';

var appBar = AppBar(
  backgroundColor: Colors.blueGrey,
  title: Text(
    'Health Care Monitoring',
    textAlign: TextAlign.center,
    style: TextStyle(
      color: Colors.white,
    ),
  ),
);

// ignore: must_be_immutable
class LoginScreen extends StatelessWidget {
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
  bool passwordVisible = true;

  // ignore: non_constant_identifier_names
  var EmailController = TextEditingController();
  // ignore: non_constant_identifier_names
  var PasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
          height: MediaQuery.of(context).size.height -
              appBar.preferredSize.height -
              MediaQuery.of(context).padding.top,
          color: Colors.blueGrey[50],
          // padding: const EdgeInsets.all(20.0),
          padding: const EdgeInsets.fromLTRB(20, 100, 20, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Container(
                  child: Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 40.0,
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
              ),
              SizedBox(
                height: 20.0,
              ),
              TextFormField(
                controller: EmailController,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Email Address',
                  prefixIcon: Icon(
                    Icons.email,
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              TextFormField(
                controller: PasswordController,
                keyboardType: TextInputType.visiblePassword,
                obscureText: passwordVisible,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                  prefixIcon: Icon(Icons.lock),
                  suffixIcon: IconButton(
                      icon: Icon(passwordVisible
                          ? Icons.visibility
                          : Icons.visibility_off),
                      onPressed: () {
                        setState(() {
                          passwordVisible = !passwordVisible;
                        });
                      }),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                  width: double.infinity,
                  color: Colors.blueGrey,
                  margin: EdgeInsets.fromLTRB(0, 10, 0, 20),
                  child: MaterialButton(
                    onPressed: () {
                      print(EmailController.text);
                      print(PasswordController.text);
                      if ((EmailController.text ==
                              "rabei.madian11@gmail.com") &&
                          (PasswordController.text == "0000")) {
                        navigateAndFinish(context, MainPage());
                      } else {
                        if (EmailController.text !=
                            "rabei.madian11@gmail.com") {
                          showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
                              title: Text("Wrong Email ddress"),
                            ),
                          );
                          EmailController.text = "";
                        } else if (PasswordController.text != "123456789") {
                          showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
                              title: Text("Wrong password"),
                            ),
                          );
                          PasswordController.text = "";
                        }
                      }
                      // navigateAndFinish(context,HomeScreen());
                    },
                    child: Text(
                      'LOGIN',
                      style: TextStyle(
                          color: Colors.white, fontSize: 18, letterSpacing: 1),
                    ),
                  ))
            ],
          )),
    ));
  }
}
