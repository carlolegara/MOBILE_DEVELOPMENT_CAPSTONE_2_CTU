import 'package:flutter/material.dart';

class Cashin extends StatefulWidget {
  const Cashin({super.key});

  @override
  State<Cashin> createState() => _CashinState();
}

final searchParkingArea = TextEditingController();

class _CashinState extends State<Cashin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 80,
        centerTitle: false,
        backgroundColor: const Color(0xFF003459),
        leading: Padding(
          padding: const EdgeInsets.only(left: 5),
          child: Image(
            width: 40,
            height: 40,
            image: AssetImage('images/ParkBai_Transparent.png'),
          ),
        ),
        title: Padding(
          padding: const EdgeInsets.only(left: 0),
          child: Container(
            decoration: BoxDecoration(
              color: const Color(0xFFE4F4FF),
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                  color: Colors.black,
                  offset: Offset(0, 3),
                  blurRadius: 5,
                  spreadRadius: 0, // Shadow expands
                ),
              ],
            ),
            child: TextField(
                controller: searchParkingArea,
                style: const TextStyle(
                  backgroundColor: const Color(0xFFE4F4FF),
                  color: const Color(0xFF003459),
                  fontSize: 18,
                  fontFamily: "Raleway",
                  fontWeight: FontWeight.bold,
                ),
                decoration: InputDecoration(
                    filled: true,
                    fillColor: const Color(0xFFE4F4FF),
                    prefixIcon: Icon(Icons.search,
                        size: 40, color: const Color(0xFF003459)),
                    hintText: 'looking for parking area?',
                    hintStyle: TextStyle(
                      fontSize: 18,
                      color: const Color(0xFF003459),
                      fontFamily: "Raleway",
                      fontWeight: FontWeight.bold,
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(color: Colors.white)))),
          ),
        ),
      ),
    );
  }
}
