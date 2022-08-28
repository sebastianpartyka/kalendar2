import 'package:flutter/material.dart';
import 'package:kalendar2/DemoApp.dart';
import 'package:kalendar2/homepage.dart';
import 'package:kalendar2/more_page.dart';
import 'package:kalendar2/profile.dart';

class Achievements extends StatelessWidget {
  const Achievements({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //return Container(color: const Color(0xFF2DBD3A));
    return Scaffold(
      appBar: AppBar(
        title: const Text('Achievements'),
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
      body: ListView(
        children: [
          Container(
            //color: Colors.blue, wywala error
            padding: const EdgeInsets.all(20),
            margin: const EdgeInsets.all(10),
            child: Text(
              '100 m           13.78s          17.09.2009         Lekcja WF',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            decoration: const BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.all(Radius.circular(80)),
            ),
          ),
          //const SizedBox(height: 10),
          Container(
            //color: Colors.blue, wywala error
            padding: const EdgeInsets.all(20),
            margin: const EdgeInsets.all(10),
            child: Text('200 m',
                style: TextStyle(
                    color: Colors.white, fontWeight: FontWeight.bold)),

            decoration: const BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.all(Radius.circular(80)),
            ),
          ),
          //const SizedBox(height: 10),
          Container(
            //color: Colors.blue, wywala error
            padding: const EdgeInsets.all(20),
            margin: const EdgeInsets.all(10),
            child: Text('400 m'),
            decoration: const BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.all(Radius.circular(80)),
            ),
          ),
          //const SizedBox(height: 10),
          Container(
            //color: Colors.blue, wywala error
            padding: const EdgeInsets.all(20),
            margin: const EdgeInsets.all(10),
            child: Text('1000 m'),
            decoration: const BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.all(Radius.circular(80)),
            ),
          ),

          Container(
            //color: Colors.blue, wywala error
            padding: const EdgeInsets.all(20),
            margin: const EdgeInsets.all(10),
            child: Text(
                '5 km            20:32.37           29.10.2011                           VI Mistrzostwa Chocianowa w biegach długich',
                style: TextStyle(
                    color: Colors.white, fontWeight: FontWeight.bold)),
            decoration: const BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.all(Radius.circular(80)),
            ),
          ),
          Container(
            //color: Colors.blue, wywala error
            padding: const EdgeInsets.all(20),
            margin: const EdgeInsets.all(10),
            child: Text('10 km'),
            decoration: const BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.all(Radius.circular(80)),
            ),
          ),
          Container(
            //color: Colors.blue, wywala error
            padding: const EdgeInsets.all(20),
            margin: const EdgeInsets.all(10),
            child: Text('15 km'),
            decoration: const BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.all(Radius.circular(80)),
            ),
          ),
          Container(
            //color: Colors.blue, wywala error
            padding: const EdgeInsets.all(20),
            margin: const EdgeInsets.all(10),
            child: Text('21.097 km'),
            decoration: const BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.all(Radius.circular(80)),
            ),
          ),
          Container(
            //color: Colors.blue, wywala error
            padding: const EdgeInsets.all(20),
            margin: const EdgeInsets.all(10),
            child: Text('42.195 km'),
            decoration: const BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.all(Radius.circular(80)),
            ),
          ),
        ],
      ),
    );
  }
}
