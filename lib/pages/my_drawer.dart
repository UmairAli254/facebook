import 'package:facebook/pages/shop.dart';
import 'package:facebook/pages/videos.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatefulWidget {
  @override
  _MyDrawerState createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            // color: Theme.of(context).primaryColor,
            height: 90,
            child: DrawerHeader(
              padding: EdgeInsets.only(top: 10),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        icon: const Icon(
                          Icons.arrow_back_rounded,
                          size: 30,
                          // color: Colors.white,
                        ),
                        splashColor: Colors.transparent,
                      ),
                      const Text(
                        "Menu",
                        style: TextStyle(
                          fontSize: 24,
                          // color: Colors.white,
                        ),
                      ),
                      IconButton(
                          onPressed: () {
                            print("Search Menu Items");
                          },
                          icon: const Icon(
                            Icons.search,
                            size: 25,
                            // color: Colors.white,
                          ),
                          tooltip: "Serach menu items"),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: ListView(
              padding: EdgeInsets.symmetric(vertical: 10),
              children: [
                GestureDetector(
                  onTap: () => print("View Profile"),
                  child: ListTile(
                      leading: Container(
                        child: const CircleAvatar(
                          backgroundImage: AssetImage("images/me.jpg"),
                          radius: 30,
                        ),
                      ),
                      title: const Text(
                        "Umair Ali",
                        style: TextStyle(fontSize: 23),
                      ),
                      subtitle: const Text(
                        "View your profile",
                        style: TextStyle(fontSize: 16),
                      )),
                ),
                const Divider(
                  thickness: 1,
                ),
                const ListTile(
                    // contentPadding: EdgeInsets.,
                    leading: Icon(
                      Icons.coronavirus,
                      color: Colors.red,
                      size: 30,
                    ),
                    title: Text(
                      "Covid-19 Information Center",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.normal,
                          color: Colors.black),
                    )),
                const ListTile(
                    // contentPadding: EdgeInsets.,
                    leading: Icon(
                      Icons.message,
                      color: Colors.green,
                      size: 25,
                    ),
                    title: Text(
                      "Messages",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.normal,
                          color: Colors.black),
                    )),
                const ListTile(
                    // contentPadding: EdgeInsets.,
                    leading: Icon(
                      Icons.group,
                      color: Colors.blue,
                      size: 30,
                    ),
                    title: Text(
                      "Groups",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.normal,
                          color: Colors.black),
                    )),
                ListTile(
                    // contentPadding: EdgeInsets.,
                    leading: const Icon(
                      Icons.shopping_bag,
                      color: Colors.blueAccent,
                      size: 30,
                    ),
                    title: const Text(
                      "Marketplace",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.normal,
                          color: Colors.black),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return Material(
                              child: Container(
                                margin: EdgeInsets.only(top: 25),
                                child: Shop(),
                              ),
                            );
                          },
                        ),
                      );
                    }),
                const ListTile(
                    // contentPadding: EdgeInsets.,
                    leading: Icon(
                      Icons.group,
                      color: Colors.green,
                      size: 30,
                    ),
                    title: Text(
                      "Friends",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.normal,
                          color: Colors.black),
                    )),
                ListTile(
                  // contentPadding: EdgeInsets.,
                  leading: const Icon(
                    Icons.video_label,
                    color: Colors.blueAccent,
                    size: 30,
                  ),
                  title: const Text(
                    "Videos",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.normal,
                        color: Colors.black),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return Material(
                            child: Container(
                                margin: EdgeInsets.only(top: 25),
                                child: Videos()),
                          );
                        },
                      ),
                    );
                  },
                ),
                const ListTile(
                    // contentPadding: EdgeInsets.,
                    leading: Icon(
                      Icons.pages,
                      color: Colors.red,
                      size: 30,
                    ),
                    title: Text(
                      "Pages",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.normal,
                          color: Colors.black),
                    )),
                const ListTile(
                    // contentPadding: EdgeInsets.,
                    leading: Icon(
                      Icons.settings,
                      color: Colors.grey,
                      size: 30,
                    ),
                    title: Text(
                      "Settings",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.normal,
                          color: Colors.black),
                    )),
                const ListTile(
                    // contentPadding: EdgeInsets.,
                    leading: Icon(
                      Icons.privacy_tip,
                      color: Colors.blueGrey,
                      size: 30,
                    ),
                    title: Text(
                      "Privacy Policy",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.normal,
                          color: Colors.black),
                    )),
                const ListTile(
                    // contentPadding: EdgeInsets.,
                    leading: Icon(
                      Icons.help,
                      color: Colors.grey,
                      size: 30,
                    ),
                    title: Text(
                      "Help Center",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.normal,
                          color: Colors.black),
                    )),
                const ListTile(
                    // contentPadding: EdgeInsets.,
                    leading: Icon(
                      Icons.book,
                      color: Colors.grey,
                      size: 30,
                    ),
                    title: Text(
                      "About",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.normal,
                          color: Colors.black),
                    )),
                const ListTile(
                    // contentPadding: EdgeInsets.,
                    leading: Icon(
                      Icons.logout,
                      color: Colors.red,
                      size: 30,
                    ),
                    title: Text(
                      "Logout",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.normal,
                          color: Colors.black),
                    )),
              ],
            ),
          )
        ],
      ),
    );
  }
}
