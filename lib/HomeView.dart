
import 'package:flutter/material.dart';
import 'package:property_dealer/HouseDetails.dart';
import 'package:property_dealer/HouseDetails2.dart';
import 'package:property_dealer/HouseDetails3.dart';
import 'package:property_dealer/LoginView.dart';
import 'package:property_dealer/Wishlist.dart';

class Homeview extends StatefulWidget {
  const Homeview({super.key});

  @override
  State<Homeview> createState() => _HomeviewState();
}

class _HomeviewState extends State<Homeview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.fromLTRB(20, 10, 0, 0),
              child: Text('Location'),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Los Angeles, CA',
                    style: TextStyle(
                        fontSize: 20,
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
                          onPressed: () {},
                          icon: const Icon(
                            Icons.bookmark_border,
                            color: Colors.black,
                          )),
                    ),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(25, 10, 0, 0),
              child: Text(
                'Discover Best',
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(25, 0, 0, 0),
              child: Text(
                'Suitable Property',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 10, 0, 0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      height: 40,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: const Color.fromARGB(255, 19, 54, 20),
                      ),
                      child: const Center(
                        child: Text(
                          'House',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Container(
                      height: 40,
                      width: 140,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: const Color.fromARGB(255, 212, 209, 209)),
                      child: const Center(
                        child: Text(
                          'Apertment',
                          style: TextStyle(
                            color: Color.fromARGB(255, 19, 54, 20),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const Wishlist())
                           );
                      },
                    child:  Container(
                      height: 40,
                      width: 120,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: const Color.fromARGB(255, 212, 209, 209)),
                      child: const Center(
                        child: Text(
                          'Wishlist',
                          style: TextStyle(
                            color: Color.fromARGB(255, 19, 54, 20),
                          ),
                        ),
                      ),
                    ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 40,
                      width: 90,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: const Color.fromARGB(255, 212, 209, 209)),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const LoginView()));
                        },
                        child: const Center(
                          child: Text(
                            'Flot',
                            style: TextStyle(
                              color: Color.fromARGB(255, 19, 54, 20),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 40,
                      width: 160,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: const Color.fromARGB(255, 212, 209, 209)),
                      child: const Center(
                        child: Text(
                          'House Booking',
                          style: TextStyle(
                            color: Color.fromARGB(255, 19, 54, 20),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(30, 20, 0, 0),
              child: Text(
                'Best for you',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                 Padding(
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
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context, 
                    MaterialPageRoute(builder: (context) => const Housedetails())
                    );
                },
            child:   Padding(
              padding: const EdgeInsets.fromLTRB(10, 10, 30, 0),
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
             ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
              child: Text(
                'Nearby your location',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
            ),
            GestureDetector(
              onDoubleTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Housedetails3()));
              },
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                child: Container(
                  height: 150,
                  width: 500,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 153, 199, 236),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    children: [
                      Container(
                        height: 150,
                        width: 150,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: const DecorationImage(
                                image: AssetImage('assets/House2.jpeg'),
                                fit: BoxFit.cover)),
                      ),
                      const Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(15, 40, 0, 0),
                            child: Text(
                              'RANCH HOUSE',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(15, 5, 0, 0),
                            child: Text(
                              '520 N Btoudry Ave Los Angeles',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(15, 10, 0, 0),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.hotel,
                                  color: Colors.yellow,
                                ),
                                SizedBox(width: 10),
                                Text(
                                  '7 Beds',
                                  style: TextStyle(color: Colors.black),
                                ),
                                SizedBox(width: 10),
                                Icon(
                                  Icons.bathtub,
                                  color: Colors.yellow,
                                ),
                                SizedBox(width: 10),
                                Text(
                                  '7 Baths',
                                  style: TextStyle(color: Colors.black),
                                ),
                                SizedBox(width: 10),
                                Icon(
                                  Icons.directions_car,
                                  color: Colors.yellow,
                                ),
                                SizedBox(width: 10),
                                Text(
                                  '1 Garage',
                                  style: TextStyle(color: Colors.black),
                                ),
                              ],
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            GestureDetector(
              onDoubleTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Housedetails2()));
              },
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                child: Container(
                  height: 150,
                  width: 500,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 153, 199, 236),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    children: [
                      Container(
                        height: 150,
                        width: 150,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: const DecorationImage(
                                image: AssetImage('assets/House1.jpg'),
                                fit: BoxFit.cover)),
                      ),
                      const Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(15, 40, 0, 0),
                            child: Text(
                              'RANCH HOUSE',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(15, 5, 0, 0),
                            child: Text(
                              '520 N Btoudry Ave Los Angeles',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(15, 10, 0, 0),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.hotel,
                                  color: Colors.yellow,
                                ),
                                SizedBox(width: 10),
                                Text(
                                  '7 Beds',
                                  style: TextStyle(color: Colors.black),
                                ),
                                SizedBox(width: 10),
                                Icon(
                                  Icons.bathtub,
                                  color: Colors.yellow,
                                ),
                                SizedBox(width: 10),
                                Text(
                                  '7 Baths',
                                  style: TextStyle(color: Colors.black),
                                ),
                                SizedBox(width: 10),
                                Icon(
                                  Icons.directions_car,
                                  color: Colors.yellow,
                                ),
                                SizedBox(width: 10),
                                Text(
                                  '1 Garage',
                                  style: TextStyle(color: Colors.black),
                                ),
                              ],
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
             GestureDetector(
              onDoubleTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Housedetails()));
              },
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                child: Container(
                  height: 150,
                  width: 500,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 153, 199, 236),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    children: [
                      Container(
                        height: 150,
                        width: 150,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: const DecorationImage(
                                image: AssetImage('assets/House3.jpg'),
                                fit: BoxFit.cover)),
                      ),
                      const Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(15, 40, 0, 0),
                            child: Text(
                              'RANCH HOUSE',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(15, 5, 0, 0),
                            child: Text(
                              '520 N Btoudry Ave Los Angeles',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(15, 10, 0, 0),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.hotel,
                                  color: Colors.yellow,
                                ),
                                SizedBox(width: 10),
                                Text(
                                  '7 Beds',
                                  style: TextStyle(color: Colors.black),
                                ),
                                SizedBox(width: 10),
                                Icon(
                                  Icons.bathtub,
                                  color: Colors.yellow,
                                ),
                                SizedBox(width: 10),
                                Text(
                                  '7 Baths',
                                  style: TextStyle(color: Colors.black),
                                ),
                                SizedBox(width: 10),
                                Icon(
                                  Icons.directions_car,
                                  color: Colors.yellow,
                                ),
                                SizedBox(width: 10),
                                Text(
                                  '1 Garage',
                                  style: TextStyle(color: Colors.black),
                                ),
                              ],
                            ),
                          ),
                        ],
                      )
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
