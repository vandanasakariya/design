import 'package:flutter/material.dart';

class DesignDemo extends StatefulWidget {
  const DesignDemo({Key? key}) : super(key: key);

  @override
  State<DesignDemo> createState() => _DesignDemoState();
}

class _DesignDemoState extends State<DesignDemo> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(body: Column(children: []),),);
  }
}
