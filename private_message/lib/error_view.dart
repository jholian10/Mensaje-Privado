import 'package:flutter/material.dart';

class ErrorView extends StatefulWidget {
  const ErrorView({super.key});

  @override
  ErrorViews createState() => ErrorViews();
}

class ErrorViews extends State<ErrorView> with SingleTickerProviderStateMixin {
  bool _showButton = true;

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      setState(() {
        _showButton = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black, width: 2),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: AnimatedOpacity(
            opacity: _showButton ? 1.0 : 0.0,
            duration: const Duration(milliseconds: 600),
            child: ElevatedButton(
              onPressed: null,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                disabledBackgroundColor: Colors.red,
                foregroundColor: Colors.white,
                disabledForegroundColor: Colors.white,
              ),
              child: const Text('Loading Failure'),
            ),
          ),
        ),
      ),
    );
  }
}
