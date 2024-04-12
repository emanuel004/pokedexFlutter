import 'package:flutter/material.dart';
import 'package:pokedex/config/theme/app_theme.dart';
import 'package:pokedex/config/view/home.dart';

void main() {
  runApp( const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme().theme(),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Pokedex'),
        ),
        body: const Center(child: Home(),),
        bottomNavigationBar: BottomAppBar(
          height: 50,
          shape: const CircularNotchedRectangle(),
          color: Colors.black,
          child: Container(height: 30.0),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){

          },
          backgroundColor: Colors.red,
          child: const Icon(Icons.add),
          
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
    );
  }
}
