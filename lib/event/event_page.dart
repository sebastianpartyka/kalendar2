import 'package:flutter/material.dart';
import 'package:kalendar2/DemoApp.dart';
import 'package:kalendar2/more_page.dart';
import 'package:kalendar2/profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:intl/intl.dart';

class EventPage extends StatefulWidget {
  const EventPage({Key? key}) : super(key: key);

  @override
  State<EventPage> createState() => _EventPageState();
}

class _EventPageState extends State<EventPage> {
  final _controller = TextEditingController();
  final _controller1 = TextEditingController();
  final _controller2 = TextEditingController();
  String eventname = "";
  String description = "";
  String details = "";

  @override
  Widget build(BuildContext context) {
    //return Container(color: const Color(0xFF2DBD3A));
    return Scaffold(
        appBar: AppBar(
          title: const Text('Add Event'),
          centerTitle: true,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(9),
          )),
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop(); // do something
            },
            icon: Icon(Icons.close),
          ),
          actions: <Widget>[
            // ikona z napisem albo bez
            // ElevatedButton.icon(
            //     onPressed: () {},
            //     icon: Icon(Icons.check_box),
            //     label: const Text('SAVE')
            IconButton(
              icon: Icon(
                Icons.check_box,
                color: Colors.white,
              ),
              onPressed: () {
                setState(() {
                  eventname = _controller.text;
                  description = _controller1.text;
                  details = _controller2.text;
                });
              },
            ),
            // ), close elevated button
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

        body: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            // SizedBox(height: 20),
            // Text(
            //   'Profil zawartość',
            //   style: TextStyle(fontSize: 10),
            // ),
            SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: FormBuilderDateTimePicker(
                name: "date",
                initialValue: DateTime.now(),
                // widget.selectedDate ?? widget.event?.date ?? DateTime.now(),
                initialDate: DateTime.now(),
                fieldHintText: "Add Date",
                initialDatePickerMode: DatePickerMode.day,
                inputType: InputType.date,
                format: DateFormat('EEEE, dd MMMM, yyyy'),
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(vertical: 10),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                  prefixIcon: Icon(Icons.calendar_today_rounded),
                ),
              ),
            ),
            //SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.all(7.0),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  hintText: 'Event name - Running etc.',
                ),
                controller: _controller,
              ),
            ),

            //SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.all(7.0),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  hintText: 'Description',
                  prefixIcon: Icon(Icons.short_text_rounded),
                ),
                controller: _controller1,
              ),
            ),
            Container(
              padding: EdgeInsets.all(7.0),
              child: Column(
                children: [
                  TextField(
                    keyboardType: TextInputType.multiline,
                    maxLines: 5,
                    decoration: InputDecoration(
                      hintText: "Details - How was your workout?",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      // focusedBorder: OutlineInputBorder(
                      //     borderSide:
                      //         BorderSide(width: 1, color: Colors.redAccent))),
                    ),
                    controller: _controller2,
// dodać duration time z cupertino picker
//set state stąd https://www.youtube.com/watch?v=LFQgZc4oKa4
// reszta stąd: https://www.youtube.com/watch?v=Tnjex6C94qc&list=PL7-HzJSunhN5I2jgwkq5cQqmqsa1PMF6Z&index=61

                    // Padding(
                    //   padding: const EdgeInsets.all(7.0),
                    //   child: TextField(
                    //     decoration: InputDecoration(
                    //       border: OutlineInputBorder(
                    //         borderRadius: BorderRadius.circular(20),
                    //       ),
                    //       hintText: 'Duration',
                    //       prefixIcon: Icon(Icons.short_text_rounded),
                    //     ),
                    //   ),
                    // ),
                    // Padding(
                    //   padding: const EdgeInsets.all(7.0),
                    //   child: TextField(
                    //     decoration: InputDecoration(
                    //       border: OutlineInputBorder(
                    //         borderRadius: BorderRadius.circular(20),
                    //       ),
                    //       hintText: 'Equipment drop down to be done',
                    //       prefixIcon: Icon(Icons.short_text_rounded),
                    //     ),
                    //   ),
                    // ),
                    // Padding(
                    //   padding: const EdgeInsets.all(7.0),
                    //   child: TextField(
                    //     decoration: InputDecoration(
                    //       border: OutlineInputBorder(
                    //         borderRadius: BorderRadius.circular(20),
                    //       ),
                    //       hintText: 'Route or preset workout if applicable to done',
                    //       prefixIcon: Icon(Icons.short_text_rounded),
                    //     ),
                    //   ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Text(eventname),
            Text(description),
            Text(details),
          ],
        ));
  }

  // void setState(Null Function() param0) {}
}
