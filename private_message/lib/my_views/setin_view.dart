import 'package:flutter/material.dart';
import 'package:private_message/my_views/friends_view.dart';
import 'package:private_message/my_views/login_view.dart';

class SetinView extends StatefulWidget {
  const SetinView({super.key});

  @override
  State<SetinView> createState() => _SetinViewState();
}

class _SetinViewState extends State<SetinView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const FriendsView()),
            );
          },
        ),
      ),
      body: Container(
        margin: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black, width: 5),
          borderRadius: BorderRadius.circular(15),
        ),
        child: FloatingActionButton(
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const LoginView()),
            );
          },
        ),
      ),
    );
  }
}
