
// ignore_for_file: prefer_const_literals_to_create_immutables

	import 'package:flutter/material.dart';

	class HomeScreen extends StatefulWidget {

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
		@override
		Widget build(BuildContext context){
			return Scaffold(
			body: const Center(
            child: Text('Hello World'),
          ),
          bottomNavigationBar: BottomNavigationBar(items: [

            const BottomNavigationBarItem(
              icon:Icon( Icons.verified_user_outlined),
            label : 'User'
            ),  

            const BottomNavigationBarItem(
              icon:Icon( Icons.settings),
            label : 'Settings'
            ), 
          ],

          ),
			 );
		}
}


