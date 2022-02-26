import 'package:flutter/material.dart';
import 'package:peer_gig/ui/components/common/dp_username_display.dart';
import 'package:peer_gig/ui/widgets/common/post.dart';

class AddPost extends StatelessWidget {
  final String? dpUrl;
  final String? username;
  const AddPost({Key? key, @required this.dpUrl, @required this.username})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      DpUsernameDisplay(dpUrl: dpUrl, username: username),
      const Post(txt: 'Type your post...')
    ]);
  }
}
