import 'package:flutter/material.dart';
import 'package:property_dealer/HomeView.dart';
import 'package:property_dealer/HouseDetails.dart';
import 'package:property_dealer/HouseDetails2.dart';
import 'package:property_dealer/HouseDetails3.dart';

class Wishlist extends StatefulWidget {
  const Wishlist({super.key});

  @override
  State<Wishlist> createState() => _WishlistState();
}

class _WishlistState extends State<Wishlist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Wishlist',
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  Container(
                    height: 45,
                    width: 45,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 235, 231, 231),
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                            color: const Color.fromARGB(255, 235, 231, 231))),
                    child: Center(
                      child: IconButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Homeview()));
                        },
                        icon: const Icon(
                          Icons.arrow_back_ios_new_rounded,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Housedetails3()));
              },
              child: Padding(
                padding: const EdgeInsets.fromLTRB(30, 10, 30, 0),
                child: Container(
                  height: 450,
                  width: 500,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 280,
                        width: 500,
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(25),
                              topRight: Radius.circular(25),
                            ),
                            image: DecorationImage(
                                image: AssetImage(
                                  'assets/House2.jpeg',
                                ),
                                fit: BoxFit.cover)),
                      ),
                      Container(
                        height: 150,
                        width: 500,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(25),
                            bottomRight: Radius.circular(25),
                          ),
                          color: Color.fromARGB(255, 29, 54, 37),
                        ),
                        child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.fromLTRB(20, 40, 0, 0),
                              child: Text(
                                'CRAFTSMAN  HOUSE',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                              child: Text(
                                '520 N Btoudry Ave Los Angeles',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(20, 15, 0, 0),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.hotel,
                                    color: Colors.yellow,
                                  ),
                                  SizedBox(width: 10),
                                  Text(
                                    '4 Beds',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  SizedBox(width: 15),
                                  Icon(
                                    Icons.bathtub,
                                    color: Colors.yellow,
                                  ),
                                  SizedBox(width: 10),
                                  Text(
                                    '4 Baths',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  SizedBox(width: 15),
                                  Icon(
                                    Icons.directions_car,
                                    color: Colors.yellow,
                                  ),
                                  SizedBox(width: 10),
                                  Text(
                                    '1 Garage',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  SizedBox(width: 15),
                                  Icon(
                                    Icons.kitchen,
                                    color: Colors.yellow,
                                  ),
                                  SizedBox(width: 10),
                                  Text(
                                    '1 kitchen',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Housedetails()));
              },
              child: Padding(
                padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                child: Container(
                  height: 450,
                  width: 500,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 280,
                        width: 500,
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(25),
                              topRight: Radius.circular(25),
                            ),
                            image: DecorationImage(
                                image: AssetImage(
                                  'assets/House3.jpg',
                                ),
                                fit: BoxFit.cover)),
                      ),
                      Container(
                        height: 150,
                        width: 500,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(25),
                            bottomRight: Radius.circular(25),
                          ),
                          color: Color.fromARGB(255, 29, 54, 37),
                        ),
                        child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.fromLTRB(20, 40, 0, 0),
                              child: Text(
                                'CRAFTSMAN  HOUSE',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                              child: Text(
                                '520 N Btoudry Ave Los Angeles',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(20, 15, 0, 0),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.hotel,
                                    color: Colors.yellow,
                                  ),
                                  SizedBox(width: 10),
                                  Text(
                                    '10 Beds',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  SizedBox(width: 15),
                                  Icon(
                                    Icons.bathtub,
                                    color: Colors.yellow,
                                  ),
                                  SizedBox(width: 10),
                                  Text(
                                    '8 Baths',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  SizedBox(width: 15),
                                  Icon(
                                    Icons.directions_car,
                                    color: Colors.yellow,
                                  ),
                                  SizedBox(width: 10),
                                  Text(
                                    '1 Garage',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  SizedBox(width: 15),
                                  Icon(
                                    Icons.kitchen,
                                    color: Colors.yellow,
                                  ),
                                  SizedBox(width: 10),
                                  Text(
                                    '2 kitchen',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Housedetails2()));
              },
              child: Padding(
                padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                child: Container(
                  height: 450,
                  width: 500,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 280,
                        width: 500,
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(25),
                              topRight: Radius.circular(25),
                            ),
                            image: DecorationImage(
                                image: AssetImage(
                                  'assets/House1.jpg',
                                ),
                                fit: BoxFit.cover)),
                      ),
                      Container(
                        height: 150,
                        width: 500,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(25),
                            bottomRight: Radius.circular(25),
                          ),
                          color: Color.fromARGB(255, 29, 54, 37),
                        ),
                        child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.fromLTRB(20, 40, 0, 0),
                              child: Text(
                                'CRAFTSMAN  HOUSE',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                              child: Text(
                                '520 N Btoudry Ave Los Angeles',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(20, 15, 0, 0),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.hotel,
                                    color: Colors.yellow,
                                  ),
                                  SizedBox(width: 10),
                                  Text(
                                    '12 Beds',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  SizedBox(width: 15),
                                  Icon(
                                    Icons.bathtub,
                                    color: Colors.yellow,
                                  ),
                                  SizedBox(width: 10),
                                  Text(
                                    '8 Baths',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  SizedBox(width: 15),
                                  Icon(
                                    Icons.directions_car,
                                    color: Colors.yellow,
                                  ),
                                  SizedBox(width: 10),
                                  Text(
                                    '1 Garage',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  SizedBox(width: 15),
                                  Icon(
                                    Icons.kitchen,
                                    color: Colors.yellow,
                                  ),
                                  SizedBox(width: 10),
                                  Text(
                                    '2 kitchen',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
