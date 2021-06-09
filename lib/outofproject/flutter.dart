import 'package:flutter/material.dart';

//the main function is the starting part of all flutter apps//
void main() => runApp(
      MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text(
              'MyApp',
              style: TextStyle(
                color: Colors.blue,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold,
              ),
            ),
            centerTitle: false,
            backgroundColor: Colors.indigo,
            // leading: IconButton(
            //   icon: Icon(Icons.menu),
            //   onPressed: () {
            //     print('Menu Clicked');
            //   },
            // ),
            actions: <Widget>[
              IconButton(
                  icon: Icon(Icons.notifications_none),
                  onPressed: () {
                    print('notification clicked');
                  }),
              IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () {
                    print('Search Icon clicked');
                  }),
            ],
            elevation: 50,
            titleSpacing: 10,
            actionsIconTheme: IconThemeData(
              color: Colors.red,
            ),
            brightness: Brightness.light,
            iconTheme: IconThemeData(color: Colors.yellow, opacity: 1),
            primary: true,
            shadowColor: Colors.yellow,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(20),
              ),
            ),
            toolbarHeight: 125,
            toolbarOpacity: 1,
          ),
          backgroundColor: Colors.white,
          drawer: Drawer(
            child: ListView(
              children: <Widget>[
                DrawerHeader(
                  decoration: BoxDecoration(color: Colors.blue),
                  child: Text('this is drawer header'),
                ),
                ListTile(
                  leading: Icon(Icons.umbrella),
                  title: Text('Menu 1'),
                  subtitle: Text('this is just a menu'),
                  trailing: Icon(Icons.more_vert_rounded),
                  onTap: () {
                    print('event happen when this is pressed');
                  },
                  onLongPress: () {
                    print('event happen when this is pressed for long time ');
                  },
                  isThreeLine: true,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(18),
                    ),
                  ),
                  tileColor: Colors.yellow,
                ),
                ListTile(
                  leading: Icon(Icons.umbrella),
                  title: Text('Menu'),
                  trailing: Icon(Icons.more_vert_rounded),
                  onTap: () {
                    print('event happen when this is pressed');
                  },
                  onLongPress: () {
                    print('event happen when this is pressed for long time ');
                  },
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(18))),
                ),
                ListTile(
                  leading: Icon(Icons.umbrella),
                  title: Text('Menu'),
                  trailing: Icon(Icons.more_vert_rounded),
                ), 
                
                ListTile(
                  leading: Icon(Icons.umbrella),
                  title: Text('Menu'),
                  trailing: Icon(Icons.more_vert_rounded),
                ),
                ListTile(
                  leading: Icon(Icons.umbrella),
                  title: Text('Menu'),
                  trailing: Icon(Icons.more_vert_rounded),
                ),
                ListTile(
                  leading: Icon(Icons.umbrella),
                  title: Text('Menu'),
                  trailing: Icon(Icons.more_vert_rounded),
                ),
                ListTile(
                  leading: Icon(Icons.umbrella),
                  title: Text('Menu'),
                  trailing: Icon(Icons.more_vert_rounded),
                ),
              ],
            ),
            elevation: 10,
          ),
        ),
      ),
    );
