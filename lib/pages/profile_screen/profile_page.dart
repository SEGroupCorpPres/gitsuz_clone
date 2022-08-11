import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(FeatherIcons.logOut),
          ),
        ],
        // bottom: TabBar(
        //   tabs: [
        //
        //   ],
        // ),
      ),
      // body: TabBarView(
      //   children: [
      //
      //   ],
      // ),
    );
  }
}
