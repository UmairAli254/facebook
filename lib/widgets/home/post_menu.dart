import 'package:flutter/material.dart';

class PostMenu extends StatefulWidget {
  @override
  PostMenuState createState() => PostMenuState();
}

class PostMenuState extends State<PostMenu> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          TextButton(
            onPressed: () {},
            child: Row(
              children: const [
                Icon(
                  Icons.post_add,
                  size: 28,
                  color: Colors.blue,
                ),
                Text(
                  "Text",
                  style: TextStyle(fontSize: 18, color: Colors.black),
                ),
              ],
            ),
          ),
          TextButton(
            onPressed: () {},
            child: Row(
              children: const [
                Icon(
                  Icons.video_call,
                  size: 30,
                  color: Colors.pinkAccent,
                ),
                Text(
                  "Live Video",
                  style: TextStyle(fontSize: 18, color: Colors.black),
                ),
              ],
            ),
          ),
          Container(
            height: 30,
            child: const VerticalDivider(
              thickness: 1,
              color: Colors.black12,
            ),
          ),
          TextButton(
            onPressed: () {},
            child: Row(
              children: const [
                Icon(
                  Icons.location_on,
                  size: 30,
                  color: Colors.pink,
                ),
                Text(
                  "Location",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
