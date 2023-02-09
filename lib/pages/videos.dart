import "package:flutter/material.dart";
import "../models/videos_model.dart";
// import "package:youtube_player_iframe/youtube_player_iframe.dart";

class Videos extends StatefulWidget {
  @override
  VideosState createState() => VideosState();
}

class VideosState extends State<Videos> {
  var isSwitch = false;



// If the requirement is just to play a single video.


  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(children: [
        // Top Bar
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Videos",
                style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Tooltip(
                message: "Play Videos Automatic",
                child: Switch(
                  value: isSwitch,
                  onChanged: (value) {
                    setState(() {
                      isSwitch = value;
                      print(value);
                    });
                  },
                  activeColor: Colors.blue,
                ),
              )
            ],
          ),
        ),
        // Divider
        const Divider(thickness: 5, color: Colors.black12),

        for (var i = 0; i < videos_data.length; i++) ...[
          Column(
            children: [
              // Topbar
              ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage(videos_data[i].profile_pic),
                    radius: 28,
                  ),
                  title: Row(
                    children: [
                      Text(
                        videos_data[i].name,
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      TextButton(
                        onPressed: () {
                         print("Follow");
                        },
                        child: Text(
                          "  Follow",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        style: TextButton.styleFrom(
                         padding: EdgeInsets.zero,
                         minimumSize: Size.zero,
                         tapTargetSize: MaterialTapTargetSize.shrinkWrap
                        ),
                      ),
                    ],
                  ),
                  subtitle: Row(
                    children: [
                      Text(
                        videos_data[i].date,
                        style: const TextStyle(fontSize: 20),
                      ),
                      Container(
                        padding: const EdgeInsets.only(left: 8),
                        child: const Text(
                          "ago",
                          style: TextStyle(fontSize: 20),
                        ),
                      )
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
                    videos_data[i].data,
                    // "rough",
                    style: TextStyle(fontSize: 18),
                  )),

              // Image
              Container(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(50)),
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Image(
                  image: AssetImage(videos_data[i].vid_url),
                  // image: AssetImage("images/shozuka.jpg"),
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
                          child: Text(videos_data[i].likes,
                              style: const TextStyle(fontSize: 16)),
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
                          child: Text(videos_data[i].comments,
                              style: const TextStyle(fontSize: 16)),
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
                          child: Text(videos_data[i].shares,
                              style: const TextStyle(fontSize: 16)),
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
        ] // Loop ends here

        // Videos show here
      ]),
    );
  }
}
