import 'package:flutter/material.dart';
import '../widgets/home/post_bar.dart';
import '../widgets/home/post_menu.dart';
import '../widgets/home/posts.dart';
import '../widgets/home/stories.dart';

class HomePage extends StatefulWidget {
  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: [
          PostBar(),
          const Divider(thickness: 1, color: Colors.black12),

          PostMenu(),
          const Divider(thickness: 5, color: Colors.black12),

          Stories(),
           const Divider(thickness: 5, color: Colors.black12),

          Posts(),
           // const Divider(thickness: 5, color: Colors.black12),

        ],
      ),
    );
  }
}
