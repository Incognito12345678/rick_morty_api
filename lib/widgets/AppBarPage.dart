/*import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:apirick/screems/homerick.dart';

class AppBarPage extends StatelessWidget implements PreferredSizeWidget {
  const AppBarPage({Key? key}) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(100);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          drawer: const Drawer(),
          appBar: AppBar(
            backgroundColor: Colors.pink.shade400,
            toolbarHeight: 100,
            elevation: 14,
            shape: const RoundedRectangleBorder(
                // ignore: unnecessary_const
                borderRadius: const BorderRadius.only(
                    bottomRight: Radius.circular(70),
                    bottomLeft: Radius.circular(70))),
            title: const Text(
              'Rick and Morty',
            ),
            actions: [
              Row(
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    alignment: Alignment.center,
                    // ignore: prefer_const_literals_to_create_immutables
                    decoration: BoxDecoration(boxShadow: [
                      const BoxShadow(
                          blurRadius: 7, spreadRadius: 3, color: Colors.pink)
                    ], shape: BoxShape.circle, color: Colors.pink.shade400),
                    child: IconButton(
                      icon: const Icon(Icons.settings),
                      onPressed: () {
                        
                      },
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const SizedBox(
                    width: 26,
                  )
                ],
              )
            ],
          )),
    );
  }
}*/
