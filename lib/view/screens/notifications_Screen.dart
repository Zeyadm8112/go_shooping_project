import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class NotiFacationsScreen extends StatefulWidget {
  const NotiFacationsScreen({Key? key}) : super(key: key);

  @override
  State<NotiFacationsScreen> createState() => _NotiFacationsScreenState();
}

class _NotiFacationsScreenState extends State<NotiFacationsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("NotiFacationsScreen")),
    );
  }
}