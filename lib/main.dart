// import 'package:flutter/material.dart';
// import 'package:recipe_app_with_riverpod/recipe.dart';
// import 'package:recipe_app_with_riverpod/recipe_detail.dart';
//
// void main() {
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     final theme = ThemeData();
//
//     return MaterialApp(
//       title: 'Recipe Calculator',
//       theme: theme.copyWith(
//         colorScheme: ColorScheme.fromSeed(
//           seedColor: Colors.greenAccent,
//         ),
//       ),
//       home: const MyHomePage(title: 'Recipe Calculator'),
//     );
//   }
// }
//
// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});
//
//   final String title;
//
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title),
//       ),
//       body: SafeArea(
//         child: ListView.builder(
//           itemCount: Recipe.samples.length,
//           itemBuilder: (BuildContext context, int index) {
//             return GestureDetector(
//               onTap: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (context) {
//                     return RecipeDetail(recipe: Recipe.samples[index]);
//                   }),
//                 );
//               },
//               child: buildRecipeCard(Recipe.samples[index]),
//             );
//           },
//         ),
//       ),
//     );
//   }
// }
//
// Widget buildRecipeCard(Recipe recipe) {
//   return Card(
//     elevation: 2.0,
//     shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
//     child: Padding(
//       padding: const EdgeInsets.all(16.0),
//       child: Column(
//         children: [
//           Image(image: AssetImage(recipe.imageUrl)),
//           const SizedBox(
//             height: 14.0,
//           ),
//           Text(
//             recipe.label,
//             style: const TextStyle(
//               fontSize: 20.0,
//               fontWeight: FontWeight.w700,
//               fontFamily: 'Palatino',
//             ),
//           ),
//         ],
//       ),
//     ),
//   );
// }

import 'package:flutter/material.dart';
import 'package:recipe_app_with_riverpod/components/color_button.dart';
import 'package:recipe_app_with_riverpod/components/theme_button.dart';
import 'constants.dart';


void main() {
  // 1
  runApp(const Yummy());
}


class Yummy extends StatefulWidget {


  const Yummy({super.key});

  @override
  State<Yummy> createState() => _YummyState();
}

class _YummyState extends State<Yummy> {
  ThemeMode themeMode = ThemeMode.light;

  ColorSelection colorSelected = ColorSelection.pink;

  // TODO: Add changeTheme above here

  void changeThemeMode(bool useLightMode) {
    setState(() {
      // 1
      themeMode = useLightMode
          ? ThemeMode.light
          : ThemeMode.dark;
    });
  }

  void changeColor(int value) {
    setState(() {
      colorSelected = ColorSelection.values[value];
    });
  }






  @override
  Widget build(BuildContext context) {



    const appTitle = 'Yummy';

    // TODO: Setup default theme

    // 3
    return MaterialApp(
      themeMode: themeMode,
      theme: ThemeData(
        colorSchemeSeed: colorSelected.color,
        useMaterial3: true,
        brightness: Brightness.light,
      ),
      darkTheme: ThemeData(
        colorSchemeSeed: colorSelected.color,
        useMaterial3: true,
        brightness: Brightness.dark,
      ),
      title: appTitle,
      debugShowCheckedModeBanner: false,
      // TODO: Apply Home widget

      // TODO: Add theme

      // TODO: Apply Home Widget

      // 4
      home: Scaffold(
        appBar: AppBar(
          // TODO: Add action buttons
          elevation: 4.0,
          title: const Text(
            appTitle,
            style: TextStyle(fontSize: 24.0),
          ),
          actions: [
            ThemeButton(changeThemeMode: changeThemeMode,),
            ColorButton(changeColor: changeColor, colorSelected: colorSelected,),
          ],
        ),
        body: const Center(
          child: Text(
            'You Hungry?😋',
            style: TextStyle(fontSize: 30.0),
          ),
        ),
      ),


    );
  }
}































