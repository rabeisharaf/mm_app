import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

var appBar = AppBar(
  backgroundColor: Colors.blueGrey,
  title: Text(
    'Testing',
    textAlign: TextAlign.center,
    style: TextStyle(
      color: Colors.white,
    ),
  ),
);

class ModelsResults extends StatefulWidget {
  const ModelsResults();

  @override
  State<ModelsResults> createState() => _ModelsResultsState();
}

class _ModelsResultsState extends State<ModelsResults> {
  var url = "https://4c1e-197-34-156-253.ngrok.io";
  // var url = "https://course-api.com/react-tours-project";
  var results = [];
  bool isLoading = true;
  void getResults() async {
    try {
      final res = await get(Uri.parse(url));
      final jsonData = jsonDecode(res.body) as List;
      setState(() {
        results = jsonData;
        isLoading = false;
      });
    } catch (err) {}
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getResults();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      body: !isLoading
          ? Container(
              padding: const EdgeInsets.fromLTRB(20, 50, 20, 20),
              child: ListView.builder(
                  itemCount: results.length,
                  itemBuilder: (context, index) {
                    return Card(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  "Model ${index + 1}",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "result ${index + 1}",
                                  style: TextStyle(
                                    fontSize: 18,
                                  ),
                                ),
                                Text(
                                  "accurcy ${index + 1}",
                                  style: TextStyle(
                                    fontSize: 18,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    );
                  }),
            )
          : Center(
              child: CircularProgressIndicator(),
            ),
    );
  }
}
