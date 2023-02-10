import '../pages/my_drawer.dart';
import '../pages/home.dart';
import '../pages/notifications.dart';
import 'package:flutter/material.dart';
import '../pages/profile.dart';
import '../pages/shop.dart';
import '../pages/videos.dart';
import 'action_buttons.dart';
import "package:badges/badges.dart" as badges;

class MainWidget extends StatefulWidget {
  @override
  MainWidgetState createState() => MainWidgetState();
}

class MainWidgetState extends State<MainWidget> {
  final _scaffolKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 5,
        child: Scaffold(
          key: _scaffolKey,
          appBar: AppBar(
              title: const Text(
                "facebook",
                style: TextStyle(
                  fontSize: 34,
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                ),
              ),
              actions: [ActionButtons(_scaffolKey)],
              backgroundColor: Colors.white,
              bottom: TabBar(
                indicatorColor: Colors.blue,
                labelPadding: const EdgeInsets.symmetric(vertical: 4),
                indicatorWeight: 3,
                tabs: [
                  const Icon(
                    Icons.home,
                    color: Color.fromARGB(206, 0, 0, 0),
                    size: 30,
                  ),
                  const Icon(
                    Icons.smart_display,
                    color: Color.fromARGB(206, 0, 0, 0),
                    size: 30,
                  ),
                  const Icon(
                    Icons.store,
                    color: Color.fromARGB(206, 0, 0, 0),
                    size: 30,
                  ),
                  const Icon(
                    Icons.account_circle,
                    color: Color.fromARGB(206, 0, 0, 0),
                    size: 30,
                  ),
                  badges.Badge(
                      position: badges.BadgePosition.topEnd(top: -9, end: -10),
                      badgeContent: const Text(
                        '3',
                        style: TextStyle(color: Colors.white),
                      ),
                      badgeStyle: const badges.BadgeStyle(
                        badgeColor: Color.fromARGB(239, 255, 0, 0),
                      ),
                      child: const Icon(
                        Icons.notifications,
                        color: Color.fromARGB(206, 0, 0, 0),
                        size: 30,
                      )),
                ],
              )),
          // Drawer
          endDrawer: Container(
            width: MediaQuery.of(context).size.width * 1.0,
            child: MyDrawer(),
          ),

// Body
          body: TabBarView(
            children: [
              HomePage(),
              Videos(),
              Shop(),
              Profile(),
              Notifications(),
            ],
          ),
        ));
  }
}
