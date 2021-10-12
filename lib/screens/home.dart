import 'package:flutter/material.dart';
import 'package:training/configs/constant.dart';
import 'package:training/models/meal.dart';
import 'package:training/widgets/bottomnav.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xFFE9E9E9),
      bottomNavigationBar: BottomNav(size: size),
      body: Stack(
        children: [
          AppBarCustom(size: size),
          Positioned(
            top: size.height * 0.38,
            left: 0,
            right: 0,
            child: Container(
              height: size.height,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 8, left: 32, right: 16),
                    child: Text(
                      "MEALS FOR THE DAY",
                      style: TextStyle(
                          color: Colors.blueGrey,
                          fontWeight: FontWeight.w700,
                          fontSize: 16),
                    ),
                  ),
                  Expanded(
                    child: new ListView(
                      scrollDirection: Axis.horizontal,
                      children: meals.map((e) => MealCard(meal: e)).toList(),
                    ),
                  ),
                  Expanded(
                      child: Container(
                    color: Colors.redAccent,
                  ))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class MealCard extends StatelessWidget {
  final Meal meal;
  const MealCard({Key? key, required this.meal}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 20, bottom: 10),
      child: Material(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        elevation: 4,
        child: Column(
          children: [
            Expanded(child: Image.asset(meal.imagePath)),
            Expanded(
                child: Column(
              children: [
                Text(meal.mealTime),
                Text(meal.name),
                Text(meal.kiloCaloriesBurnt),
                Text(meal.timeTaken),
                SizedBox(
                  height: 16,
                )
              ],
            ))
          ],
        ),
      ),
    );
  }
}

class AppBarCustom extends StatelessWidget {
  const AppBarCustom({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: 0,
        height: 0.35 * size.height,
        left: 0,
        right: 0,
        child: ClipRRect(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(40)),
          child: Container(
            color: Colors.white,
          ),
        ));
  }
}
