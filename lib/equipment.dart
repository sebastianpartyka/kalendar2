import 'package:flutter/material.dart';
import 'package:kalendar2/DemoApp.dart';
import 'package:kalendar2/homepage.dart';
import 'package:kalendar2/more_page.dart';
import 'package:kalendar2/profile.dart';

//TODO:
//Tekst z obrazkiem w containerze klikalny, dodać środkowy button dodawania z bottomnavbara który będzie dodawał nową rzecz a nie nowy trening

class Equipment extends StatelessWidget {
  const Equipment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //return Container(color: const Color(0xFF2DBD3A));
    return Scaffold(
      appBar: AppBar(
        title: const Text('Equipment'),
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
      floatingActionButton: FloatingActionButton(
        //Floating action button on Scaffold
        onPressed: () {
          //code to execute on button press
        },
        child: Icon(Icons.add), //icon inside button
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
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
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                );
              },
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

      body: ListView(
        children: [
          SizedBox(
            height: 220,
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Container(
                  height: 200,
                  width: double.infinity,
                  padding: const EdgeInsets.all(8.0),
                  // decoration: BoxDecoration(
                  //   borderRadius: BorderRadius.all(Radius.circular(100)),
                  // ),
                  child: Card(
                    color: Colors.blueAccent,
                    child: Padding(
                      padding: const EdgeInsets.all(12),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text('Kalenji One',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold)),
                            const SizedBox(
                              height: 15,
                            ),
                            const Text('1738 km',
                                style: TextStyle(
                                    letterSpacing: 2,
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500)),
                            const SizedBox(
                              height: 15,
                            ),
                            ElevatedButton(
                              //on pressed
                              onPressed: () async {},
                              //text to shoe in to the button
                              child: const Text('More',
                                  style: TextStyle(color: Colors.white)),
                              //style section code here
                              style: ButtonStyle(
                                elevation: MaterialStateProperty.all<double>(0),
                                shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18.0),
                                )),
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.black),
                              ),
                            ),
                          ]),
                    ),
                  ),
                ),
                Positioned(
                  right: 0,
                  top: 0,
                  child: Image.network(
                    'https://i.ibb.co/xHCJgd6/nike.png',
                    fit: BoxFit.cover,
                    height: 200,
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 220,
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Container(
                  height: 200,
                  width: double.infinity,
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    color: Colors.blueAccent,
                    child: Padding(
                      padding: const EdgeInsets.all(12),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text('Triban Gravel 120',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold)),
                            const SizedBox(
                              height: 15,
                            ),
                            const Text('600 km',
                                style: TextStyle(
                                    letterSpacing: 2,
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500)),
                            const SizedBox(
                              height: 15,
                            ),
                            ElevatedButton(
                              //on pressed
                              onPressed: () async {},
                              //text to shoe in to the button
                              child: const Text('More',
                                  style: TextStyle(color: Colors.white)),
                              //style section code here
                              style: ButtonStyle(
                                elevation: MaterialStateProperty.all<double>(0),
                                shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18.0),
                                )),
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.black),
                              ),
                            ),
                          ]),
                    ),
                  ),
                ),
                Positioned(
                  left: 100,
                  //right: 100,
                  top: 80,
                  //bottom: 0,
                  //width: 100,
                  //height: 100,
                  child: Image.network(
                    'https://i.ibb.co/C5Vcw1K/triban.png',
                    fit: BoxFit.cover,
                    height: 190,
                  ),
                )
              ],
            ),
          ),
          Container(
            //color: Colors.amber, wywala error
            padding: const EdgeInsets.all(20),
            margin: const EdgeInsets.all(10),
            height: 120,
            width: 70,
            alignment: Alignment.bottomLeft,
            decoration: const BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.all(Radius.circular(40)),
            ),

            child: Image.network('https://i.ibb.co/1d12ddj/kalenji.png'),
          ),
          const SizedBox(height: 12),
          Container(
            //color: Colors.amber, wywala error
            padding: const EdgeInsets.all(20),
            margin: const EdgeInsets.all(10),
            child: Text('Rower'),
            decoration: const BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.all(Radius.circular(80)),
            ),
          ),
          const SizedBox(height: 12),
          Container(
            //color: Colors.amber, wywala error
            padding: const EdgeInsets.all(20),
            margin: const EdgeInsets.all(10),
            child: Text('Buty'),
            decoration: const BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.all(Radius.circular(80)),
            ),
          ),
          const SizedBox(height: 12),
        ],
      ),

      // Center(
      //   child: Column(
      //     mainAxisSize: MainAxisSize.min,
      //     children: <Widget>[
      //       Text(
      //         'Equipment zawartość',
      //         style: TextStyle(fontSize: 50),
      //       )
      //     ],
      //   ),
      // ),
    );
  }
}
