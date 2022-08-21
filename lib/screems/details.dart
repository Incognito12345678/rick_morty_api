import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:apirick/widgets/api.dart';

// ignore: unused_import
import 'package:apirick/models/dataapi.dart';

class Details extends StatelessWidget {
  final DataApi recibirdatos;

  Details({required this.recibirdatos});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Card(
      color: const Color.fromARGB(243, 234, 232, 232),
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 80),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage(
                recibirdatos.image,
              ),
              radius: 100,
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              textAlign: TextAlign.center,
              recibirdatos.name,
              style: const TextStyle(fontSize: 30),
            ),
            const SizedBox(
              height: 11,
            ),
            Text(
              "State: ${recibirdatos.state}",
              style: const TextStyle(fontSize: 20),
            ),
            Text(
              "Specie: ${recibirdatos.gender}",
              style: const TextStyle(fontSize: 20),
            ),
            Text(
              "Gender: ${recibirdatos.sex}",
              style: const TextStyle(fontSize: 20),
            )
          ],
        ),
      ),
    ));
  }
}
