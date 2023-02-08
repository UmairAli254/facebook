import "package:flutter/material.dart";
import "../models/notifications_model.dart";

class Notifications extends StatefulWidget {
  @override
  NotificationsState createState() => NotificationsState();
}

class NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          // Top Bar
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Notifications",
                  style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(104, 199, 196, 196),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: IconButton(
                    onPressed: () {
                      print("Mark all as read");
                    },
                    icon: const Icon(
                      Icons.check_circle,
                      size: 29,
                    ),
                  ),
                )
              ],
            ),
          ),
          // Divider
          const Divider(
            thickness: 1,
            color: Colors.black12,
          ),

          // Notifications show here

          for (var i = 0; i < notifications_data.length; i++) ...[
            ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage(notifications_data[i].pic),
                radius: 28,
              ),
              title: Wrap(
                children: [
                  Text(
                    notifications_data[i].name,
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    " ${notifications_data[i].notify}",
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              subtitle: Text(
                notifications_data[i].time + " ago",
                style: const TextStyle(fontSize: 20),
              ),
              trailing: TextButton(
                onPressed: () {},
                child: Icon(Icons.more_vert),
                style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                    minimumSize: Size.zero,
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    iconColor: Colors.black),
              ),
            )
          ]
        ],
      ),
    );
  }
}
