import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kalendar2/DemoApp.dart';
import 'package:kalendar2/UserPage.dart';
import 'package:kalendar2/achievements.dart';
import 'package:kalendar2/equipment.dart';
import 'package:kalendar2/goals.dart';
import 'package:kalendar2/homepage.dart';
import 'package:kalendar2/stats.dart';
import 'package:kalendar2/training_presets.dart';

class NavigationDrawerWidget extends StatelessWidget {
  final padding = EdgeInsets.symmetric(horizontal: 10);
  @override
  Widget build(BuildContext context) {
    final name = 'Hit Richards';
    final email = 'hit@abs.com';
    final urlImage =
        'https://sa.kapamilya.com/absnews/abscbnnews/media/news-special1/lifestyle/9/7/kingz-hit-richards-090716.jpg';

    return Drawer(
      child: Material(
        color: const Color.fromRGBO(50, 75, 205, 1),
        child: ListView(
          padding: padding,
          children: <Widget>[
            buildHeader(
              urlImage: urlImage,
              name: name,
              email: email,
              onClicked: () => Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const UserPage(
                    name: 'Hit Richards',
                    urlImage:
                        'https://sa.kapamilya.com/absnews/abscbnnews/media/news-special1/lifestyle/9/7/kingz-hit-richards-090716.jpg',
                  ),
                ),
              ),
            ),
            //const SizedBox(height: 10),
            buildMenuItem(
              text: 'Index',
              icon: Icons.home,
              onClicked: () => selectedItem(context, 0),
            ),
            //const SizedBox(height: 10),
            buildMenuItem(
              text: 'Calendar',
              icon: Icons.calendar_month_rounded,
              onClicked: () => selectedItem(context, 1),
            ),
            //const SizedBox(height: 10),
            buildMenuItem(
              text: 'Equipment (Shoes/bikes)',
              icon: Icons.inventory_2_outlined,
              onClicked: () => selectedItem(context, 2),
            ),
            //const SizedBox(height: 10),
            buildMenuItem(
              text: 'Routes / Training presets',
              icon: Icons.route,
              onClicked: () => selectedItem(context, 3),
            ),
            //const SizedBox(height: 10),
            buildMenuItem(
              text: 'Achievements / records',
              icon: Icons.checklist_rounded,
              onClicked: () => selectedItem(context, 4),
            ),
            //const SizedBox(height: 16),
            buildMenuItem(
              text: 'Goals',
              icon: Icons.radar_rounded,
              onClicked: () => selectedItem(context, 5),
            ),
            //const SizedBox(height: 16),
            buildMenuItem(
              text: 'Stats',
              icon: Icons.query_stats_rounded,
              onClicked: () => selectedItem(context, 6),
            ),
            //const SizedBox(height: 16),
            Divider(thickness: 2, color: Colors.white),
            //const SizedBox(height: 16),
            buildMenuItem(
              text: 'Calculators',
              icon: Icons.calculate_rounded,
              onClicked: () => selectedItem(context, 7),
            ),
            //const SizedBox(height: 10),
            buildMenuItem(
              text: 'Data export',
              icon: Icons.import_export_outlined,
              onClicked: () => selectedItem(context, 8),
            ),
            //const SizedBox(height: 10),
            buildMenuItem(
              text: 'Community (list of users)',
              icon: Icons.people,
              onClicked: () => selectedItem(context, 9),
            ),
            //const SizedBox(height: 10),
            buildMenuItem(
              text: 'Favorites / following',
              icon: Icons.workspaces_outline,
              onClicked: () => selectedItem(context, 10),
            ),
            //const SizedBox(height: 16),
            Divider(thickness: 2, color: Colors.white),
            //const SizedBox(height: 16),
            buildMenuItem(
              text: 'Settings',
              icon: Icons.settings,
              onClicked: () => selectedItem(context, 11),
            ),
            //const SizedBox(height: 10),
            buildMenuItem(
              text: 'About',
              icon: Icons.info_rounded,
              onClicked: () => selectedItem(context, 12),
            ),
            //const SizedBox(height: 10),
            buildMenuItem(
              text: 'Log out',
              icon: Icons.logout_outlined,
            ),
          ],
        ),
      ),
    );
  }

  Widget buildHeader({
    required String urlImage,
    required String name,
    required String email,
    required VoidCallback onClicked,
  }) =>
      InkWell(
        onTap: onClicked,
        child: Container(
          padding: padding.add(EdgeInsets.symmetric(vertical: 40)),
          child: Row(
            children: [
              CircleAvatar(
                radius: 40,
                backgroundImage: NetworkImage(urlImage),
              ),
              SizedBox(width: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  const SizedBox(height: 6),
                  Text(
                    email,
                    style: TextStyle(fontSize: 14, color: Colors.white),
                  ),
                ],
              )
            ],
          ),
        ),
      );

  Widget buildMenuItem({
    required String text,
    required IconData icon,
    VoidCallback? onClicked,
  }) {
    final color = Colors.white;
    final hoverColor = Colors.white70;

    return ListTile(
      leading: Icon(
        icon,
        color: color,
      ),
      title: Text(
        text,
        style: TextStyle(color: color),
      ),
      hoverColor: hoverColor,
      onTap: onClicked,
    );
  }

  void selectedItem(BuildContext context, int index) {
    Navigator.of(context).pop(); //przy powracaniu wstecz NavDrawer znika
    switch (index) {
      case 0:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => const HomePage(),
        ));
        break;

      case 1:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => DemoApp(),
        ));
        break;

      case 2:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => const Equipment(),
        ));
        break;

      case 3:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => TrainingPresets(),
        ));
        break;

      case 4:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => Achievements(),
        ));
        break;

      case 5:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => Goals(),
        ));
        break;

      case 6:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => Stats(),
        ));
        break;

      // case 7:
      //   Navigator.of(context).push(MaterialPageRoute(
      //     builder: (context) => const nazwastrony(),
      //   ));
      //   break;

      // case 8:
      //   Navigator.of(context).push(MaterialPageRoute(
      //     builder: (context) => DemoApp(),
      //   ));
      //   break;

      // case 9:
      //   Navigator.of(context).push(MaterialPageRoute(
      //     builder: (context) => DemoApp(),
      //   ));
      //   break;

      // case 10:
      //   Navigator.of(context).push(MaterialPageRoute(
      //     builder: (context) => DemoApp(),
      //   ));
      //   break;

      // case 11:
      //   Navigator.of(context).push(MaterialPageRoute(
      //     builder: (context) => DemoApp(),
      //   ));
      //   break;

      // case 12:
      //   Navigator.of(context).push(MaterialPageRoute(
      //     builder: (context) => DemoApp(),
      //   ));
      //   break;

      // case 13:
      //   Navigator.of(context).push(MaterialPageRoute(
      //     builder: (context) => DemoApp(),
      //   ));
      //   break;
    }
  }
}
