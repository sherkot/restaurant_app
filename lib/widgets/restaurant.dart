import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:restaurant_app/models/restaurant.dart';

class Restaurant extends StatefulWidget {
  const Restaurant({Key? key}) : super(key: key);

  @override
  State<Restaurant> createState() => _RestaurantState();
}

class _RestaurantState extends State<Restaurant> {
  get giveLike => null;

  late RestaurantModel restaurantModel;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(children: [
        Stack(children: [
          Image.network(restaurantModel.icon),
          const Card(
            child: Text("20% off"),
          )
        ]),
        Column(children: [
          Text(restaurantModel.name),
          Text(restaurantModel.type),
          Text(restaurantModel.category),
          Row(
            children: [
              RatingBar.builder(
                minRating: 0.5,
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemCount: 5,
                itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                itemBuilder: (context, _) => const Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                onRatingUpdate: (rating) {
                  print(rating);
                },
              )
            ],
          )
        ]),
        IconButton(onPressed: giveLike, icon: const Icon(Icons.heart_broken))
      ]),
    );
  }
}
