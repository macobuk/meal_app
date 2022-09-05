import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/screens/categories_screen.dart';
import 'package:flutter_complete_guide/screens/category_meals_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CEO Meal App',
      theme: ThemeData(
          fontFamily: 'Raleway',
          primarySwatch: Colors.green,
          secondaryHeaderColor: Colors.teal,
          canvasColor: Colors.white,
          textTheme: ThemeData.light().textTheme.copyWith(
                  titleLarge: TextStyle(
                color: Colors.white,
                fontFamily: 'RobotoCondensed',
                fontWeight: FontWeight.bold,
              ))),
      //home: CategoriesScreen(),
      initialRoute: '/',
      routes: {
        '/': (ctx) => CategoriesScreen(),
        CategoryMealsScreen.routeName: (ctx) => CategoryMealsScreen(),
      },
    );
  }
}
