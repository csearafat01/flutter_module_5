import 'package:flutter/material.dart';

void main() {
  // give me some widget
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
      title: 'Flutter Module 5',
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  MySnackBar(message, context){
    return ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(message)
        )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: const Text('Innovation App'),
        titleSpacing: 10,
        ///centerTitle: true,
        toolbarHeight: 60,
        toolbarOpacity: 1,
        elevation: 6,
        backgroundColor: Colors.amber,
        actions: [
          IconButton(onPressed: (){MySnackBar('comment', context);}, icon: Icon(Icons.comment)),
          IconButton(onPressed: (){MySnackBar('search', context);}, icon: Icon(Icons.search)),
          IconButton(onPressed: (){MySnackBar('settings', context);}, icon: Icon(Icons.settings)),
          IconButton(onPressed: (){MySnackBar('email', context);}, icon: Icon(Icons.email))
        ],

      ),

      body: (const Text('')),
      ///drawer: (),
      ///endDrawer: (),
      ///bottomNavigationBar: (),
      ///floatingActionButton: ()

    );
  }
}