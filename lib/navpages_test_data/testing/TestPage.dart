import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mm_app/navpages_test_data/testing/result.dart';
import 'package:mm_app/widgets/test_field.dart';

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

class TestPage extends StatefulWidget {
  const TestPage();

  @override
  State<TestPage> createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  var BaseLineController = TextEditingController();
  var AccelerationController = TextEditingController();
  var FetalMovementController = TextEditingController();
  var UterineContractionController = TextEditingController();
  var LightDecelerationsController = TextEditingController();
  var ServereDecelerationController = TextEditingController();
  var ProlonguedDecelerationsController = TextEditingController();
  var AbnormalshorttermvariabilityController = TextEditingController();
  var MeanvalueofshorttermvariabilityController = TextEditingController();
  var PercentagevariabilityController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      body: SingleChildScrollView(
        child: Container(
          color: Colors.blueGrey[50],
          padding: const EdgeInsets.fromLTRB(20, 50, 20, 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TestField(
                controller: BaseLineController,
                text: 'BaseLine Value',
              ),
              SizedBox(
                height: 20.0,
              ),
              TestField(
                controller: AccelerationController,
                text: 'Acceleration',
              ),
              SizedBox(
                height: 20.0,
              ),
              TestField(
                controller: FetalMovementController,
                text: 'Fetal Movement',
              ),
              SizedBox(
                height: 20.0,
              ),
              TestField(
                controller: UterineContractionController,
                text: 'Uterine Contraction',
              ),
              SizedBox(
                height: 20.0,
              ),
              TestField(
                controller: LightDecelerationsController,
                text: 'Light Decelerations',
              ),
              SizedBox(
                height: 20.0,
              ),
              TestField(
                controller: ServereDecelerationController,
                text: 'Servere Deceleration',
              ),
              SizedBox(
                height: 20.0,
              ),
              TestField(
                controller: ProlonguedDecelerationsController,
                text: 'Prolongued Decelerations',
              ),
              SizedBox(
                height: 20.0,
              ),
              TestField(
                controller: AbnormalshorttermvariabilityController,
                text: 'Abnormalshortterm variability',
              ),
              SizedBox(
                height: 20.0,
              ),
              TestField(
                controller: MeanvalueofshorttermvariabilityController,
                text: 'Meanvalueofshortterm variability',
              ),
              SizedBox(
                height: 20.0,
              ),
              TestField(
                controller: PercentagevariabilityController,
                text: 'Percentage abnormal long term variability',
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
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ModelsResults()));
                  },
                  child: Text(
                    'TEST',
                    style: TextStyle(
                        color: Colors.white, fontSize: 18, letterSpacing: 1),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
