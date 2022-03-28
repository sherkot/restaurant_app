import 'package:flutter/material.dart';

class ListOfRestaurants extends StatefulWidget {
  const ListOfRestaurants({Key? key}) : super(key: key);

  @override
  State<ListOfRestaurants> createState() => _ListOfRestaurantsState();
}

class _ListOfRestaurantsState extends State<ListOfRestaurants> {
  get onPressed => null;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Stack(
          children: [
            Container(
              child: Image.network(
                  "https://www.francospizza.eu/wp-content/uploads/2017/12/pizza.png"),
            ),
            Column(children: const [
              Text("Mega Deal"),
              Text("Get mega deals here"),
            ])
          ],
        ),
        Stack(
          children: [
            Card(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: const [
                      Icon(Icons.info_outline),
                      Text("Campaign info"),
                    ],
                  ),
                  Column(
                    children: [
                      const Text("Read More"),
                      IconButton(
                          onPressed: onPressed,
                          icon: const Icon(Icons.arrow_forward_rounded)),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
