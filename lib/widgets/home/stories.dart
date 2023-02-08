import "package:flutter/material.dart";
import "../../models/stories_mode.dart";

class Stories extends StatefulWidget {
  @override
  StoriesState createState() => StoriesState();
}

class StoriesState extends State<Stories> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      height: 250,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Wrap(
          spacing: 5,
          children: [
            // Uplaod Stories
            Container(
              height: 250,
              width: 150,
              decoration: BoxDecoration(
                color: Color.fromARGB(8, 129, 126, 126),
                border: Border.all(color: Colors.black12),
                borderRadius: BorderRadius.circular(20),
              ),
              child: GestureDetector(
                onTap: () {
                  print("Upload Story");
                },
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20)),
                      child: Stack(
                        clipBehavior: Clip.none, // This put the upper layer/
                        children: const [
                          ClipRRect(
                              borderRadius: BorderRadiusDirectional.only(
                                topStart: Radius.circular(20),
                                topEnd: Radius.circular(20),
                              ),
                              child: Image(
                                image: AssetImage("images/me.jpg"),
                                width: 250,
                                height: 160,
                                fit: BoxFit.cover,
                              )),
                          Positioned(
                            // top: 60,
                            bottom: -22,
                            left: 50,
                            child: Icon(
                              Icons.add_circle_rounded,
                              size: 40,
                              color: Colors.blue,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // color: Colors.red,
                      margin: const EdgeInsets.only(top: 50),
                      child: const Text(
                        "Create Story",
                        style: TextStyle(
                            fontSize: 21, fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // View Stories
            for (var i = 0; i < stories_data.length; i++) ...[
              Container(
                height: 250,
                width: 150,
                decoration: BoxDecoration(
                  // color: Colors.transparent,Umair Ali
                  border: Border.all(color: Colors.black12),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: GestureDetector(
                  onTap: () {
                    print("View this story");
                  },
                  child: Stack(
                    children: [
                      ClipRRect(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20)),
                        child: Image(
                          image: AssetImage(stories_data[i].img),
                          height: 250,
                          width: 150,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Positioned(
                          bottom: 7,
                          left: 7,
                          child: Text(
                            stories_data[i].name,
                            style: const TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              shadows: [
                                Shadow(
                                  color: Colors.grey,
                                  offset: Offset(2, 2),
                                  blurRadius: 3,
                                ),
                              ],
                            ),
                          ))
                    ],
                  ),
                ),
              ),
            ]
          ],
        ),
      ),
    );
  }
}
