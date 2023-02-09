import "package:flutter/material.dart";

class Videos_Model {
  final profile_pic;
  final name;
  final date;
  final data;
  final vid_url;
  final likes;
  final comments;
  final shares;

  Videos_Model({
    this.profile_pic,
    this.name,
    this.date,
    this.data,
    this.vid_url,
    this.likes,
    this.comments,
    this.shares,
  });
}

var videos_data = [
  Videos_Model(
    profile_pic: "images/shozuka.jpg",
    name: "Shozuka",
    date: "10 mins",
    data: "Lorem ipsum Lorem.",
    vid_url: "images/shozuka.jpg",
    likes: "20",
    comments: "30",
    shares: "9",
  ),
  Videos_Model(
    profile_pic: "images/me.jpg",
    name: "Umair Ali",
    date: "5 seconds",
    data: "Lorem ipsum Lorem ipsum.",
    vid_url: "images/me.jpg",
    likes: "20",
    comments: "30",
    shares: "9",
  ),
 
];
