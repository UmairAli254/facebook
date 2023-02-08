import 'package:flutter/material.dart';
import "../../models/posts_model.dart";

class Posts extends StatefulWidget {
  @override
  _PostsState createState() => _PostsState();
}

class _PostsState extends State<Posts> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for (var i = 0; i < posts_data.length; i++) ...[
          Column(
            children: [
              // Topbar
              ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage(posts_data[i].profile_pic),
                    radius: 28,
                  ),
                  title: Text(
                   posts_data[i].name,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  subtitle: Row(
                    children: [
                      Text(
                       posts_data[i].date,
                        style: const TextStyle(fontSize: 20),
                      ),
                      Container(
                          padding: const EdgeInsets.only(left: 8),
                          child: const Icon(Icons.public))
                    ],
                  ),
                  trailing: TextButton(
                    onPressed: () {},
                    child: Icon(Icons.more_vert),
                    style: TextButton.styleFrom(
                        padding: EdgeInsets.zero,
                        minimumSize: Size.zero,
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        iconColor: Colors.black),
                  )),

              // Post Data
              Container(
                  alignment: const Alignment(-1, -1),
                  padding: const EdgeInsets.all(10),
                  child: Text(
                   posts_data[i].data,
                    style: TextStyle(fontSize: 18),
                  )),

              // Image
              Container(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(50)),
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Image(
                  image: AssetImage(posts_data[i].post_image),
                  // width: 500,
                  height: 300,
                  fit: BoxFit.fill,
                ),
              ),

              const Divider(
                height: 20,
                thickness: 1,
              ),

              // Footer
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Row(
                      children: [
                        const Icon(
                          Icons.thumb_up_outlined,
                          size: 27,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8),
                          child: Text(posts_data[i].likes, style: const TextStyle(fontSize: 16)),
                        )
                      ],
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Row(
                      children: [
                        const Icon(
                          Icons.chat_bubble_outline,
                          size: 27,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8),
                          child:
                              Text(posts_data[i].comments, style: const TextStyle(fontSize: 16)),
                        )
                      ],
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Row(
                      children: [
                        const Icon(
                          Icons.rotate_left_outlined,
                          size: 27,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8),
                          child: Text(posts_data[i].shares, style: const TextStyle(fontSize: 16)),
                        )
                      ],
                    ),
                  ),
                ],
              ),

              // Bottom Divider
              const Divider(thickness: 5, color: Colors.black12),
            ],
          )
        ]
      ],
    );
  }
}
