import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.light(),
      home: AdminMobilePage(),
    );
  }
}

class AdminMobilePage extends StatelessWidget {
  @override
  Widget build(BuildContext centext) {
    return Scaffold(
      body: Row(
        children: [],
      ),
    );
  }
}

class SideNavigation extends StatefulWidget {
  @override
  _SideNavigationState createState() => _SideNavigationState();
}

class _SideNavigationState extends State<SideNavigation> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return NavigationRail(
      selectedIndex: selectedIndex,
      onDestinationSelected: (index) {
        setState(() {
          selectedIndex = index;
        });
      },
      destinations: [
        NavigationRailDestination(
            icon: Icon(Icons.thumbs_up_down), label: Text('ThumbsUpDown')),
        NavigationRailDestination(
            icon: Icon(Icons.people), label: Text('People')),
        NavigationRailDestination(icon: Icon(Icons.face), label: Text('Face')),
        NavigationRailDestination(
            icon: Icon(Icons.bookmark), label: Text('Bookmark')),
      ],
    );
  }
}
