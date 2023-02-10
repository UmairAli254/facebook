import "package:flutter/material.dart";

import "../widgets/home/post_bar.dart";
import "../widgets/home/post_menu.dart";
import "../widgets/home/posts.dart";

class Profile extends StatefulWidget {
  @override
  ProfileState createState() => ProfileState();
}

class ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: [
          // Images Container Starts here
          Container(
            margin: EdgeInsets.only(bottom: 55),
            width: 100,
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                // Background Image
                GestureDetector(
                  onTap: () {
                    print("background Image");
                  },
                  child: Image(
                    image: AssetImage("images/cover.jpg"),
                    fit: BoxFit.cover,
                    height: 200,
                    width: MediaQuery.of(context).size.width * 1.0,
                  ),
                ),
                // Background Image Ends here
                // Profile Picture
                Positioned(
                  bottom: -55,
                  left: 15,
                  child: GestureDetector(
                    onTap: () => print("Profile Image"),
                    child: Container(
                      width: 180,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          border: Border.all(
                            color: Colors.white,
                            width: 4,
                          )),
                      child: Stack(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(100),
                            child:
                                const Image(image: AssetImage("images/me.jpg")),
                          ),

                          // Camera Icon
                          Positioned(
                              bottom: 10,
                              right: 0,
                              child: Container(
                                  width: 45,
                                  height: 45,
                                  padding: const EdgeInsets.all(0),
                                  decoration: BoxDecoration(
                                      color: const Color.fromARGB(
                                          255, 237, 233, 233),
                                      border: Border.all(
                                        width: 3,
                                        color: Colors.white,
                                      ),
                                      borderRadius: BorderRadius.circular(100)),
                                  child: IconButton(
                                    onPressed: () {
                                      print("button camera");
                                    },
                                    icon: const Icon(
                                      Icons.photo_camera,
                                      size: 25,
                                    ),
                                  )))
                          // Camera Icon ends here
                        ],
                      ),
                    ),
                  ),
                ),
                // Profile Picture ends here
              ],
            ),
          ),
          // Images Container Ends here

          // Name Container starts here
          Container(
              margin: EdgeInsets.only(left: 45, top: 7),
              child: const Text("Umair Ali",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ))),
          // Name Container ends here

          // Buttons Container
          Container(
            // color: Colors.red,
            margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 12),
            height: 70,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                // Add to Story Button
                GestureDetector(
                  onTap: () {
                    print("Add to story button");
                  },
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(5)),
                    child: Row(
                      children: const [
                        Icon(
                          Icons.add_circle,
                          color: Colors.white,
                          size: 25,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 3),
                          child: Text(
                            "Add to story",
                            style: TextStyle(
                              fontSize: 21,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                // Add to Story Button End here

                // Edit Profile Button
                GestureDetector(
                  onTap: () {
                    print("Edit Profile button");
                  },
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(204, 233, 234, 235),
                        borderRadius: BorderRadius.circular(5)),
                    child: Row(
                      children: const [
                        Icon(
                          Icons.edit,
                          color: Colors.black,
                          size: 25,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 3),
                          child: Text(
                            "Edit profile",
                            style: TextStyle(
                              fontSize: 21,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                // Edit Profile Button Ends here

                // Options Button
                GestureDetector(
                  onTap: () {
                    print("More Options button");
                  },
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(204, 233, 234, 235),
                        borderRadius: BorderRadius.circular(5)),
                    child: Row(
                      children: const [
                        Icon(
                          Icons.more_horiz,
                          color: Colors.black,
                          size: 25,
                        ),
                      ],
                    ),
                  ),
                ),
                // Options Button Ends here
              ],
            ),
          ),
          // Buttons Container Ends Here
          const Divider(thickness: 5, color: Colors.black12),

          // Perosnal Details
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            // color: Colors.red,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              // spacing: 15,
              children: [
                Container(
                  child: Row(
                    children: const [
                      Icon(
                        Icons.favorite,
                        color: Colors.grey,
                        size: 30,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 5),
                        child: Text(
                          "Single",
                          style: TextStyle(
                            fontSize: 21,
                            fontWeight: FontWeight.normal,
                            color: Color.fromARGB(255, 78, 76, 76),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    children: const [
                      Icon(
                        Icons.library_add_check,
                        color: Colors.grey,
                        size: 30,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 5),
                        child: Text(
                          "Followed by 20 people",
                          style: TextStyle(
                            fontSize: 21,
                            // fontWeight: FontWeight.w500,
                            color: Color.fromARGB(255, 78, 76, 76),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          const Divider(thickness: 5, color: Colors.black12),
          // Perosnal Details End Here

          PostBar(),
          PostMenu(),
          const Divider(thickness: 5, color: Colors.black12),
          Posts(),
        ],
      ),
    );
  }
}
