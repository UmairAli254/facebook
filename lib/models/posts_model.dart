import "package:flutter/material.dart";

class Posts_Model {
  final profile_pic;
  final name;
  final date;
  final data;
  final post_image;
  final likes;
  final comments;
  final shares;

  Posts_Model({
    this.profile_pic,
    this.name,
    this.date,
    this.data,
    this.post_image,
    this.likes,
    this.comments,
    this.shares,
  });
}

var posts_data = [
  Posts_Model(
    profile_pic: "images/me.jpg",
    name: "Umair Ali",
    date: "05-13-20",
    data: "Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum.",
    post_image: "images/me.jpg",
    likes: "20",
    comments: "30",
    shares: "9",
  ),
  Posts_Model(
    profile_pic: "images/motu.jpg",
    name: "Motu",
    date: "11-07-22",
    data: "Motu Patlu Motu Patlu Motu Patlu Motu Patlu Motu Patlu Motu Patlu Motu Patlu Motu Patlu Motu Patlu ",
    post_image: "images/motu-patlu.jpg",
    likes: "17",
    comments: "6",
    shares: "13",
  ),
];
