import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';
import 'package:kalendar2/DemoApp.dart';
import 'package:kalendar2/more_page.dart';
import 'package:kalendar2/profile.dart';
import 'package:flutter/src/painting/image_provider.dart';

class Stats extends StatelessWidget {
  const Stats({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //return Container(color: const Color(0xFF2DBD3A));

    Map<String, double> dataMap = {
      "Siłownia": 5,
      "Bieganie": 3,
      "Rower": 2,
      "Pływanie": 2,
    };

    return Scaffold(
        appBar: AppBar(
          title: const Text('Stats'),
          centerTitle: true,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(9),
          )),
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop(); // do something
            },
            icon: Icon(Icons.arrow_back),
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.settings,
                color: Colors.white,
              ),
              onPressed: () {
                // do something
              },
            ),
          ],
        ),
        // body: floatingActionButton: FloatingActionButton(
        //   //Floating action button on Scaffold
        //   onPressed: () {
        //     //code to execute on button press
        //   },
        //   child: Icon(Icons.add), //icon inside button
        // )

        // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        //floating action button position to center

        bottomNavigationBar: BottomAppBar(
          //  currentIndex: 1;
          //bottom navigation bar on scaffold
          color: Colors.blue,
          shape: CircularNotchedRectangle(), //shape of notch
          notchMargin:
              5, //notche margin between floating button and bottom appbar
          child: Row(
            //children inside bottom appbar
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.home,
                  color: Colors.white,
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(
                  Icons.calendar_month_rounded,
                  color: Colors.white,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DemoApp()),
                  );
                },
              ),
              SizedBox(
                width: 20,
              ),
              IconButton(
                icon: Icon(
                  Icons.person_sharp,
                  color: Colors.white,
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Profile()));
                },
              ),
              IconButton(
                icon: Icon(
                  Icons.motion_photos_on_rounded,
                  color: Colors.white,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const MorePage()),
                  );
                  //const MorePage();
                },
              ),
            ],
          ),
        ),
        body: Column(
          children: <Widget>[
            SizedBox(height: 20),
            Container(
              child: Image.network(
                  'https://github.com/imaNNeoFighT/fl_chart/raw/master/repo_files/images/bar_chart/bar_chart_sample_3.png'),
            ),
            Container(
              child: Text('Dni treningowe w poszczególnych miesiącach',
                  style: TextStyle(fontWeight: FontWeight.bold)),
            ),
            SizedBox(height: 30),
            Container(
              child: Center(
                child: PieChart(
                  dataMap: dataMap,
                  chartRadius: MediaQuery.of(context).size.width / 1.7,
                  chartLegendSpacing: 25,
                  legendOptions: LegendOptions(
                    legendPosition: LegendPosition.right,
                  ),
                  chartValuesOptions: ChartValuesOptions(
                    showChartValuesInPercentage: true,
                  ),
                ),
              ),
            ),
            SizedBox(height: 5),
            Container(
              child: Text('Treningi w bieżącym miesiącu',
                  style: TextStyle(fontWeight: FontWeight.bold)),
            )
          ],
        ));
  }

//    class DataMap extends StatelessWidget {
//   Map<String, double> dataMap = {
//     "Flutter": 5,
//     "React": 3,
//     "Xamarin": 2,
//     "Ionic": 2,
//   };
//   }
// }

  // body: Center(
  //   child: Column(
  //     mainAxisSize: MainAxisSize.min,
  //     children: <Widget>[
  //       Text(
  //         'Stats zawartość, wykresy itp.',
  //         style: TextStyle(fontSize: 50),
  //       )
  //     ],
  //   ),
//         );
//   }
}
