import 'package:apirick/widgets/AppBarPage.dart';
import 'package:apirick/widgets/api.dart';
import 'package:flutter/material.dart';

GlobalKey<_HomeRickState> homeKey = GlobalKey();

class HomeRick extends StatefulWidget {
  HomeRick({Key? key}) : super(key: key);

  @override
  State<HomeRick> createState() => _HomeRickState();
}

class _HomeRickState extends State<HomeRick> {
  Color color = const Color.fromARGB(243, 247, 243, 243);

  void changecolor() {
    setState(() {
      if (color == const Color.fromARGB(243, 247, 243, 243)) {
        color = const Color.fromARGB(243, 241, 220, 237);
      } else {
        color = const Color.fromARGB(243, 247, 243, 243);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarPage(),
      body: SafeArea(
        child: Card(
          color: color,
          //color: Color.fromARGB(243, 241, 220, 237),

          margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Column(
            children: const [
              Expanded(child: Api()),
            ],
          ),
        ),
      ),
    );
  }
}

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
                        //llama a la funcion cambiarcolor

                        homeKey.currentState!.changecolor();
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
}
