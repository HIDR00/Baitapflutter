import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Level5 extends StatefulWidget {
  const Level5({super.key});

  @override
  State<Level5> createState() => _Level5State();
}

class _Level5State extends State<Level5> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Level 5"),
      ),
      body: Container(),
    );
  }
}
