import 'package:flutter/material.dart';

import 'package:modular_ui/modular_ui.dart';

class ProfilePage extends StatelessWidget {

  const ProfilePage({
    super.key,
  });

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Profile",
        ),
      ),
      body: Center(
        child: Container(
         height: 200,
          width: 200,
          color: Colors.pink,
        ),
      ),
    );
  }
}
