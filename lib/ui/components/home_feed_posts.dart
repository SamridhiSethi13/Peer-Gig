import 'dart:html';
import 'package:flutter/material.dart';
import 'package:peer_gig/ui/components/dp_username_display.dart';
import 'package:peer_gig/ui/widgets/common/post.dart';

class HomeFeedPosts extends StatelessWidget {
  final String? txt;
  final Url? dpUrl;
  final String? postID;
  final String? username;
  const HomeFeedPosts(
      {Key? key,
      @required this.txt,
      @required this.dpUrl,
      @required this.username,
      @required this.postID})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Post(txt: txt),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
            DpUsernameDisplay(dpUrl: dpUrl, username: username),
          ])
        ]);
  }
}
