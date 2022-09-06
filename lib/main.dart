import 'package:flutter/material.dart';

import './screens/categories_screen.dart';
import './screens/category_meals_screen.dart';
import './screens/meal_detail_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chef\'s Passion Meals',
      theme: ThemeData(
        fontFamily: 'Raleway',
        primarySwatch: Colors.green,
        secondaryHeaderColor: Colors.teal,
        canvasColor: Colors.white,
        highlightColor: Colors.greenAccent.shade700,
        textTheme: ThemeData.light().textTheme.copyWith(
            titleLarge: TextStyle(
              color: Colors.white,
              fontFamily: 'RobotoCondensed',
              fontWeight: FontWeight.bold,
            ),
            titleMedium: TextStyle(
                color: Colors.black,
                fontFamily: 'RobotCondensed',
                fontSize: 20,
                fontWeight: FontWeight.bold)),
      ),
      //home: CategoriesScreen(),
      initialRoute: '/',
      routes: {
        '/': (ctx) => CategoriesScreen(),
        CategoryMealsScreen.routeName: (ctx) => CategoryMealsScreen(),
        MealDetailScreen.routeName: (ctx) => MealDetailScreen(),
      },
      //onGenerateRoute: (settings) {
      //print(settings.arguments);
      //return MaterialPageRoute(builder: (ctx) => CategoriesScreen());
      // },
      onUnknownRoute: (settings) {
        return MaterialPageRoute(builder: (ctx) => CategoriesScreen());
      },
    );
  }
}
