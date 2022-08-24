import 'package:flutter/material.dart';
import 'package:kalendar2/DemoApp.dart';
import 'package:kalendar2/more_page.dart';
import 'package:kalendar2/profile.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //return Container(color: const Color(0xFF2DBD3A));
    return Scaffold(
        appBar: AppBar(
          title: const Text('Home Page'),
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
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text(
                'Dzisiaj jest: ',
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.left,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Data utworzenia dzienników: ',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Przebiegnięty dystans od utworzenia dzienników: ',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Dystans na rowerze od utworzenia dzienników: ',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Łączny dystans wszystkich dyscyplin: ',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Dni treningowych/Wszystkich dni (w %): ',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Średni dystans dziennie: ',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Średni dystans tygodniowo: ',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ));
  }
}
