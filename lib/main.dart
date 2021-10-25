import 'package:bottom_nav_with_list/data.dart';
import 'package:bottom_nav_with_list/note_list.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

/// This is the main application widget.
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Notes App';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      debugShowCheckedModeBanner: false,
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;

  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  final List<Widget> _widgetOptions = <Widget>[
    buildNotesListView(notes),
    const Text(
      'Index 1: Format',
      style: optionStyle,
    ),
    const Text(
      'Index 2: Gallery',
      style: optionStyle,
    ),
    const Text(
      'Index 3: Handwrite',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notes'),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(
                Icons.check_circle_outline,
                size: 30,
                color: Colors.black,
              ),
              label: 'Checklist',
              activeIcon: Icon(
                Icons.check_circle,
                size: 35,
              )),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.text_format_rounded,
                size: 30,
                color: Colors.black,
              ),
              label: 'Format',
              activeIcon: Icon(
                Icons.text_format_rounded,
                size: 35,
              )),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.photo_camera_back_outlined,
                size: 30,
                color: Colors.black,
              ),
              label: 'Gallery',
              activeIcon: Icon(
                Icons.photo_camera_back_rounded,
                size: 35,
              )),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.edit,
                size: 30,
                color: Colors.black,
              ),
              label: 'Handwrite',
              activeIcon: Icon(
                Icons.edit,
                size: 35,
              )),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        onTap: _onItemTapped,
      ),
    );
  }
}
