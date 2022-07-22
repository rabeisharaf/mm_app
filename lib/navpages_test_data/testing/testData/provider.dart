import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'model.dart';

class HomePageProvider extends ChangeNotifier {
  Result data;

  //List<CompanyModel>? results;
  Future<void> getData() async {
    final response = await http.get(
      Uri.parse('http://4c1e-197-34-156-253.ngrok.io/'),
      // Send authorization headers to the backend.
      headers: {
        "Content-Lenght":"169",
        'Content-Type': 'text/html',
        "Access-Control_Allow_Origin": "*",
        "ngrok-skip-browser-warning": "true",
      },
    );
    Map<String, dynamic> mJson = jsonDecode(response.body);

    // now we have a json...
    data = Result.fromJson(mJson);

    notifyListeners();
  }

  Future SendData(Map<String, dynamic> data) async {
    // String?send ="username="+data["username"]+"&password="+data["password"];
    Map<String, dynamic> send = {
      "username": data["0"],
      "email": data["1"],
      "password": data["2"],
      "serial": data["3"],
      "phone_number": data["4"],
      "owner_id": data["5"],
      "govern": data["6"],
      "city": data["7"],
      "street": data["8"],
      "comp_id": data["9"],
      "username": data["10"],
      "email": data["11"],
      "password": data["12"],
      "serial": data["13"],
      "phone_number": data["14"],
      "owner_id": data["15"],
      "govern": data["16"],
      "city": data["17"],
      "street": data["18"],
      "comp_id": data["19"],
      "comp_id": data["20"],
    };
    http.Response response =
        await http.post(Uri.parse("http://192.168.1.5:8000/company/"),
            headers: {
              'Content-type': 'application/json',
              'Accept': 'application/json',
            },
            body: jsonEncode(send));
    print(jsonEncode(data));
    print('test data is ${jsonDecode(response.body)}');
  }
}
