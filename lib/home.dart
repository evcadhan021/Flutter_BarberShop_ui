import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int selectedDate = 19;

  void _selectedDate(int date) {
    setState(() {
      selectedDate = date;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: const Text(
          'BOOKING',
          style: TextStyle(
              fontFamily: 'FirSans', fontSize: 18.0, color: Colors.black),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back),
          color: Colors.black,
        ),
      ),
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 100.0,
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                    blurRadius: 3.0,
                    color: Colors.black.withOpacity(0.2),
                    spreadRadius: 4.0,
                  )
                ], color: Colors.white),
              ),
              Positioned(
                top: 20.0,
                left: 15.0,
                right: 15.0,
                child: SizedBox(
                  height: 60.0,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
