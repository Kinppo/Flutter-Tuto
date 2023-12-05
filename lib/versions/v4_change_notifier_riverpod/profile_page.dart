import 'package:flutter/material.dart';

const int itemCount = 20;

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
      itemCount: itemCount,
      itemBuilder: (context, index) => ListTile(
        title: Text('Item ${index + 1}'),
        leading: const Icon(Icons.person),
        trailing: const Icon(Icons.select_all),
        onTap: () => debugPrint("Tap!"),
      ),
    ));
  }
}
