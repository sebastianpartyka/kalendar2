import 'package:flutter/material.dart';
import 'package:kalendar2/DemoApp.dart';
import 'package:kalendar2/event/event_provider.dart';
import 'package:kalendar2/event/event_tools.dart';
import 'package:intl/intl.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:provider/provider.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class EventPage extends StatefulWidget {
  final Event? event;

  const EventPage({Key? key, this.event}) : super(key: key);

  @override
  State<EventPage> createState() => _EventPageState();
}

class _EventPageState extends State<EventPage> {
  final titleController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  late DateTime fromDate;
  late DateTime toDate;

  @override
  void dispose() {
    titleController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();

    if (widget.event == null) {
      fromDate = DateTime.now();
      toDate = DateTime.now().add(
        const Duration(hours: 2),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const CloseButton(),
        actions: [
          ElevatedButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.check_box_rounded),
            label: const Text('SAVE'),
          ),
        ],
        // title: const Center(
        //   child: Text(''),
        // ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(23.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              title(),
              const SizedBox(height: 15),
              buildDateTimePickers(),
            ],
          ),
        ),
      ),
    );
  }

  title() => TextFormField(
        style: const TextStyle(fontSize: 20),
        decoration: const InputDecoration(
          border: UnderlineInputBorder(),
          hintText: "Event's name",
        ),
        onFieldSubmitted: (_) => saveForm(),
        controller: titleController,
        validator: (title) =>
            title != null && title.isEmpty ? 'Name cannot be empty' : null,
      );

  buildDateTimePickers() => Column(
        children: [
          buildFrom(),
          buildTo(),
        ],
      );

  buildFrom() => Column(
        children: [
          Row(
            children: const [
              Text('From:'),
            ],
          ),
          Row(
            children: [
              Expanded(
                flex: 2,
                child: buildDropdownField(
                  text: DateTools.toDate(fromDate),
                  onClicked: () {},
                ),
              ),
              Expanded(
                child: buildDropdownField(
                  text: DateTools.toTime(fromDate),
                  onClicked: () {},
                ),
              )
            ],
          ),
          //Row(),
        ],
      );

  buildTo() => Column(
        children: [
          Row(
            children: const [
              Text('To:'),
            ],
          ),
          Row(
            children: [
              Expanded(
                flex: 2,
                child: buildDropdownField(
                  text: DateTools.toDate(toDate),
                  onClicked: () {},
                ),
              ),
              Expanded(
                child: buildDropdownField(
                  text: DateTools.toTime(toDate),
                  onClicked: () {},
                ),
              )
            ],
          ),
          //Row(),
        ],
      );

  buildDropdownField({required String text, required VoidCallback onClicked}) =>
      ListTile(
        title: Text(text),
        trailing: const Icon(Icons.arrow_drop_down),
        onTap: onClicked,
      );

  Future pickFromDateTime({required bool pickDate}) async {
    final date = await pickDateTime(fromDate, pickDate: pickDate);
    if (date == null) return;
    if (date.isAfter(toDate)) {
      toDate = DateTime(
        date.year,
        date.month,
        date.day,
      );
    }
    setState(() => fromDate = date);
  }

  Future pickToDateTime({required bool pickDate}) async {
    final date = await pickDateTime(toDate,
        pickDate: pickDate, firstDate: pickDate ? fromDate : null);
    if (date == null) return;

    setState(() => toDate = date);
  }

  Future<DateTime?> pickDateTime(
    DateTime initialDate, {
    required bool pickDate,
    DateTime? firstDate,
  }) async {
    if (pickDate) {
      final date = await showDatePicker(
          context: context,
          initialDate: initialDate,
          firstDate: firstDate ?? DateTime(2020, 1),
          lastDate: DateTime(2050, 1));
      if (date == null) return null;

      final time =
          Duration(hours: initialDate.hour, minutes: initialDate.minute);

      return date.add(time);
    }
  }

  Future saveForm() async {
    final isValid = _formKey.currentState!.validate();

    if (isValid) {
      final event = Event(
        title: titleController.text,
        from: fromDate,
        to: toDate,
      );

      final provider = Provider.of<EventProvider>(context, listen: false);
      provider.addEvent(event);
      Navigator.of(context).pop();
    }
  }
}
