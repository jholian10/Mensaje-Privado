import 'package:flutter/material.dart';

class LoadingView extends StatefulWidget {
  const LoadingView({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _StfulwicheState createState() => _StfulwicheState();
}

class _StfulwicheState extends State<LoadingView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black, width: 2),
      ),
      child: Stack(
        children: [
          Visibility(
            child: Container(
              color: Colors.white,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [CircularProgressIndicator(color: Colors.black)],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
