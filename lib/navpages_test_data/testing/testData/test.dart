import 'package:flutter/material.dart';
import 'package:mm_app/navpages_test_data/testing/testData/provider.dart';
import 'package:mm_app/navpages_test_data/testing/testData/results.dart';
import 'package:provider/provider.dart';

import 'main_page.dart';

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

class Test extends StatefulWidget {
  const Test();
  @override
  _TestState createState() => _TestState();
}

class _TestState extends State<Test> {
  var BaseLineController = TextEditingController(text: "141");
  var AccelerationController = TextEditingController(text: "0");
  var FetalMovementController = TextEditingController(text: "0.008");
  var UterineContractionController = TextEditingController(text: "0");
  var LightDecelerationsController = TextEditingController(text: "0");
  var ServereDecelerationController = TextEditingController(text: "0");
  var ProlonguedDecelerationsController = TextEditingController(text: "0");
  var AbnormalshorttermvariabilityController = TextEditingController(text: "75");
  var MeanvalueofshorttermvariabilityController = TextEditingController(text: "0.3");
  var MeanvalueoflongtermvariabilityController = TextEditingController(text: "49");
  var PercentagevariabilityController = TextEditingController(text: "4.6");
  var HistogramwidthController = TextEditingController(text: "9");
  var HistogramminController = TextEditingController(text: "136");
  var HistogrammaxController = TextEditingController(text: "145");
  var HistogrampeaksController = TextEditingController(text: "1");
  var HistogramzeroesController = TextEditingController(text: "0");
  var HistogrammodeController = TextEditingController(text: "143");
  var HistogrammeanController = TextEditingController(text: "141");
  var HistogrammedianController = TextEditingController(text: "143");
  var HistogramvarianceController = TextEditingController(text: "0");
  var HistogramtendencyController = TextEditingController(text: "1");

  var formKey = GlobalKey<FormState>();
  bool isPassword = true;

  @override
  Widget build(BuildContext context) {
    final HomeProvider = Provider.of<HomePageProvider>(context);
    return Scaffold(
      appBar: appBar,
      body: SingleChildScrollView(
            child: Container(
              color: Colors.blueGrey[50],
              padding: const EdgeInsets.fromLTRB(20, 50, 20, 20),
              child: Form(
                key: formKey,
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
                      controller: MeanvalueoflongtermvariabilityController,
                      text: 'Meanvalueoflongterm variability',
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
                    TestField(
                      controller: HistogramwidthController,
                      text: 'Histogram Width',
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    TestField(
                      controller: HistogramminController,
                      text: 'Histogram Min',
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    TestField(
                      controller: HistogrammaxController,
                      text: 'Histogram Max',
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    TestField(
                      controller: HistogrampeaksController,
                      text: 'Histogram Peaks',
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    TestField(
                      controller: HistogramzeroesController,
                      text: 'Histogram Zeroes',
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    TestField(
                      controller: HistogrammodeController,
                      text: 'Histogram Mode',
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    TestField(
                      controller: HistogrammeanController,
                      text: 'Histogram Mean',
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    TestField(
                      controller: HistogrammedianController,
                      text: 'Histogram Median',
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    TestField(
                      controller: HistogramvarianceController,
                      text: 'Histogram Variance',
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    TestField(
                      controller: HistogramtendencyController,
                      text: 'Histogram Tendency',
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    defaultButton(
                      function: () async {
                        if (formKey.currentState.validate()) {
                          Map<String, String> TestData = {
                            '0': BaseLineController.text,
                            '1': AccelerationController.text,
                            '2': FetalMovementController.text,
                            '3': UterineContractionController.text,
                            '4': LightDecelerationsController.text,
                            '5': ServereDecelerationController.text,
                            '6': ProlonguedDecelerationsController.text,
                            '7': AbnormalshorttermvariabilityController.text,
                            '8': MeanvalueofshorttermvariabilityController.text,
                            '9': MeanvalueoflongtermvariabilityController.text,
                            '10': PercentagevariabilityController.text,
                            '11': HistogramwidthController.text,
                            '12': HistogramminController.text,
                            '13': HistogrammaxController.text,
                            '14': HistogrampeaksController.text,
                            '15': HistogramzeroesController.text,
                            '16': HistogrammodeController.text,
                            '17': HistogrammeanController.text,
                            '18': HistogrammedianController.text,
                            '19': HistogramvarianceController.text,
                            '20': HistogramtendencyController.text,
                          };
                          try {
                            // await HomeProvider.HomeProvider(TestData);

                            navigateTo(
                                context,
                                ChangeNotifierProvider(
                                    create: (BuildContext context) =>
                                        HomeProvider,
                                    child: Results()));
                          } on Exception catch (e) {
                            showDialog(
                                context: context,
                                builder: (context) => const AlertDialog(
                                      content: Text("Please Check Your Inputs"),
                                    ));
                          }
                        } else {
                          showDialog(
                              context: context,
                              builder: (context) => const AlertDialog(
                                    content: Text("Failed"),
                                  ));
                        }
                      },
                      text: 'TEST',
                      isUpperCase: true,
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                  ],
                ),
              ),
            ),
          ),
    );
  }
}
