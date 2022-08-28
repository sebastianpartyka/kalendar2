import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kalendar2/UserPage.dart';
import 'package:kalendar2/homepage.dart';

class NavigationDrawerWidget extends StatelessWidget {
  final padding = EdgeInsets.symmetric(horizontal: 20);
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
            const SizedBox(height: 48),
            buildMenuItem(
              text: 'Index',
              icon: Icons.home,
              onClicked: () => selectedItem(context, 0),
            ),
            const SizedBox(height: 10),
            buildMenuItem(
              text: 'Calendar',
              icon: Icons.calendar_month_rounded,
            ),
            const SizedBox(height: 10),
            buildMenuItem(
              text: 'Equipment (Shoes/bikes)',
              icon: Icons.inventory_2_outlined,
            ),
            const SizedBox(height: 10),
            buildMenuItem(
              text: 'Routes / Training presets',
              icon: Icons.route,
            ),
            const SizedBox(height: 10),
            buildMenuItem(
              text: 'Achievements / records',
              icon: Icons.checklist_rounded,
            ),
            const SizedBox(height: 10),
            buildMenuItem(
              text: 'Goals',
              icon: Icons.radar_rounded,
            ),
            const SizedBox(height: 16),
            buildMenuItem(
              text: 'Stats',
              icon: Icons.query_stats_rounded,
            ),
            //const SizedBox(height: 16),
            Divider(thickness: 2, color: Colors.white),
            //const SizedBox(height: 16),
            buildMenuItem(
              text: 'Calculators',
              icon: Icons.calculate_rounded,
            ),
            const SizedBox(height: 16),
            buildMenuItem(
              text: 'Data export',
              icon: Icons.import_export_outlined,
            ),
            const SizedBox(height: 16),
            buildMenuItem(
              text: 'Community (list of users)',
              icon: Icons.people,
            ),
            const SizedBox(height: 16),
            buildMenuItem(
              text: 'Favorites / following',
              icon: Icons.workspaces_outline,
            ),
            //const SizedBox(height: 16),
            Divider(thickness: 2, color: Colors.white),
            //const SizedBox(height: 16),
            buildMenuItem(
              text: 'Settings',
              icon: Icons.settings,
            ),
            const SizedBox(height: 16),
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
                radius: 30,
                backgroundImage: NetworkImage(urlImage),
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
    }
  }
}
