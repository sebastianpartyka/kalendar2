import 'package:flutter/material.dart';

class MorePage extends StatelessWidget {
  const MorePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //return Container(color: const Color(0xFF2DBD3A));
    return Scaffold(
        appBar: AppBar(
          title: const Text('Wincyj detailsów'),
        ),
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text(
                'Więcej...',
                style: TextStyle(fontSize: 50),
              )
            ],
          ),
        ));
  }
}
