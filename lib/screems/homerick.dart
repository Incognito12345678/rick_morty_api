import 'package:apirick/widgets/api.dart';
import 'package:flutter/material.dart';

class HomeRick extends StatelessWidget {
  const HomeRick({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Demo Home Page'),
      ),
      body: Column(
        children: const [
          Expanded(child: Api()),
        ],
      ),
    );
  }
}
