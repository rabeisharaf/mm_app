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
  final url = "https://course-api.com/react-tours-project";
  var _dataJson = [];
  void fetchData() async {
    try {
      final response = await get(Uri.parse(url));
      final jsonData = jsonDecode(response.body) as List;
      setState(() {
        _dataJson = jsonData;
      });
    } catch (error) {}
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      body: Container(
        width: double.infinity,
        color: Colors.blueGrey[50],
        padding: const EdgeInsets.fromLTRB(20, 50, 20, 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            DataTable(
              showBottomBorder: true,
              columns: [
                DataColumn(label: Text("Model")),
                DataColumn(label: Text("Result")),
                DataColumn(label: Text("Accurcy")),
              ],
              rows: [
                DataRow(
                  cells: [
                    DataCell(Text("NN")),
                    DataCell(Text("R 1")),
                    DataCell(Text("A 1")),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(Text("LR")),
                    DataCell(Text("R 2")),
                    DataCell(Text("A 2")),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(Text("DT")),
                    DataCell(Text("R 3")),
                    DataCell(Text("A 3")),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(Text("SVM")),
                    DataCell(Text("R 4")),
                    DataCell(Text("A 4")),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(Text("XGBOOST")),
                    DataCell(Text("R 5")),
                    DataCell(Text("A 5")),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
