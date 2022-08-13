import 'package:apirick/models/dataapi.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
// ignore: unused_import
import 'dart:convert';

// ignore: unused_import
import 'package:http/http.dart' as http;

class Api extends StatefulWidget {
  const Api({Key? key}) : super(key: key);

  @override
  State<Api> createState() => _ApiState();
}

class _ApiState extends State<Api> {
  //se convierte en un objeto dart
  Future<List<DataApi>> fetchapi() async {
    final response =
        await http.get(Uri.parse('https://rickandmortyapi.com/api/character'));

    if (response.statusCode == 200) {
      // If the server did return a 200 OK response,
      // then parse the JSON.
      final apidata = jsonDecode(response.body);
      // este es un array de Strings

      // pasando la data a objetos DogData, recorriendo los strings y transformandolos a objeto
      return List<DataApi>.from(
          apidata['results'].map((x) => DataApi.fromJson(x)).toList());
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load album');
    }
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<DataApi>>(
      future: fetchapi(),
      builder: (BuildContext context, AsyncSnapshot<List<DataApi>> snapshot) {
        if (snapshot.hasData) {
          return Carousel(snapshot);
        } else if (snapshot.hasError) {
          return Text("${snapshot.error}");
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }

  // ignore: non_constant_identifier_names
  CarouselSlider Carousel(AsyncSnapshot<List<DataApi>> snapshot) {
    return CarouselSlider.builder(
      options: CarouselOptions(
        height: 300.0,
        autoPlay: false,
        enlargeCenterPage: true,
        viewportFraction: 0.9,
        aspectRatio: 16 / 9,
        initialPage: 0,
        autoPlayCurve: Curves.fastOutSlowIn,
      ),
      itemCount: snapshot.data?.length,
      itemBuilder: (BuildContext context, int index, int realIndex) {
        return Container(
          margin: const EdgeInsets.all(3.0),
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(9.0)),
            image: DecorationImage(
              image: NetworkImage(snapshot.data![index].image),
              fit: BoxFit.cover,
            ),
          ),
        );
      },
      //
    );
  }
}
/*itemBuilder: (BuildContext context, int index) {
              return Image.network(snapshot.data![index].image);
            },*/