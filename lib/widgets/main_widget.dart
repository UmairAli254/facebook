import 'package:flutter/material.dart';
import 'action_buttons.dart';

class MainWidget extends StatefulWidget {
  @override
  MainWidgetState createState() => MainWidgetState();
}

class MainWidgetState extends State<MainWidget> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      
      child: Scaffold(
          appBar: AppBar(
              title: const Text(
                "facebook",
                style: TextStyle(
                  fontSize: 34,
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                ),
              ),
              actions: [ActionButtons()],
              backgroundColor: Colors.white,
              bottom: const TabBar(

                indicatorColor: Colors.blue,
                labelPadding: EdgeInsets.symmetric(vertical: 4),
                indicatorWeight: 3,

                tabs: [
                  Icon(Icons.home, color: Color.fromARGB(255, 0, 0, 0), size: 35,),
                  Icon(Icons.smart_display, color: Colors.black, size: 35,),
                  Icon(Icons.store, color: Colors.black, size: 35,),
                  Icon(Icons.account_circle, color: Colors.black, size: 35,),
                  Icon(Icons.notifications, color: Colors.black, size: 35,),
                ],
               
              )),
          body: TabBarView(
            children: [
              Text("Home"),
              Text("Video"),
              Text("Shop"),
              Text("Profile"),
              Text("Notfications"),
            ],
          ),
    )
    );
  }
}
