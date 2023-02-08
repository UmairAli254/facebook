// ignore_for_file: avoid_unnecessary_containers

import "package:flutter/material.dart";

class PostBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        left: 17,
        right: 17,
        top: 17,
        bottom: 8,
      ),
      child: Row(
       mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            child: const CircleAvatar(
              backgroundImage: AssetImage("images/me.jpg"),
              radius: 30,
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: const Text(
              "What's on your mind?",
              style: TextStyle(fontSize: 18,color: Colors.black),
            ),
          ),
          Container(
            height: 60,
            child: const VerticalDivider(
              color: Colors.black12,
              thickness: 1,
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 22, top: 4),
            child: Column(
              children: const [
                Icon(
                  Icons.photo_album_outlined,
                  size: 30,
                ),
                SizedBox(height: 5),
                Text("Photo"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
