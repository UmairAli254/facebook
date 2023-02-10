import "package:flutter/material.dart";
import "package:youtube_player_flutter/youtube_player_flutter.dart";

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
    vid_url: YoutubePlayer.convertUrlToId("https://www.youtube.com/watch?v=2P2BpcsQOqE"),
    likes: "20",
    comments: "30",
    shares: "9",
  ),
  Videos_Model(
    profile_pic: "images/me.jpg",
    name: "Umair Ali",
    date: "5 seconds",
    data: "Lorem ipsum Lorem ipsum.",
    vid_url: YoutubePlayer.convertUrlToId("https://www.youtube.com/watch?v=Jn0I6FmKGq4"),
    likes: "20",
    comments: "30",
    shares: "9",
  ),
 
];
