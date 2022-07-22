import 'package:flutter/material.dart';
import 'package:mm_app/navpages_test_data/testing/testData/provider.dart';
import 'package:provider/provider.dart';

var appBar = AppBar(
  backgroundColor: Colors.blueGrey,
  title: Text(
    'Results',
    textAlign: TextAlign.center,
    style: TextStyle(
      color: Colors.white,
    ),
  ),
);

class Results extends StatefulWidget {
  const Results();

  @override
  _ResultsState createState() => _ResultsState();
}

class _ResultsState extends State<Results> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      appBar: appBar,
      body: ChangeNotifierProvider<HomePageProvider>(
        create: (context) => HomePageProvider(),
        child: Consumer<HomePageProvider>(
          builder: (context, provider, child) {
            // when we have the json loaded... let's put the data into a data table widget
            if (provider.data == null) {
              provider.getData();
              return const Center(child: CircularProgressIndicator());
            }
            return SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              // Data table widget in not scrollable so we have to wrap it in a scroll view when we have a large data set..
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    DataTable(
                      columns: const [
                        DataColumn(
                          label: Text('Model'),
                        ),
                        DataColumn(
                          label: Text('Result'),
                        ),
                        DataColumn(
                          label: Text('Accuracy'),
                        ),
                      ],
                      rows: provider
                          .data
                          .NN[0]((e) {
                        return DataRow(
                          cells: <DataCell>[
                            DataCell(
                              Text("NN"),
                            ),
                            DataCell(
                              Text("${provider.data.NN[0]}"),
                            ),
                            DataCell(
                              Text("${provider.data.NN[1]}"),
                            ),
                          ],
                        );
                      })
                          .toList(),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
