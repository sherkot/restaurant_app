import 'package:flutter/material.dart';

import 'list_of_restaurants.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Restaurant Menu',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        secondaryHeaderColor: Colors.red,
      ),
      home: ListOfRestaurants(),
    );
  }
}