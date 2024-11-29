import 'package:flutter/material.dart';
import 'package:property_dealer/HomeView.dart';

class Housedetails2 extends StatefulWidget {
  const Housedetails2({super.key});

  @override
  State<Housedetails2> createState() => _Housedetails2State();
}

class _Housedetails2State extends State<Housedetails2> {
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
                    'Details',
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
                          )),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
              child: Container(
                height: 300,
                width: 500,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: const DecorationImage(
                    image: AssetImage(
                      'assets/House1.jpg',
                    ),
                    fit: BoxFit.cover,
                    ),
                ),
              ),
            ),
         const  Padding(
              padding: EdgeInsets.fromLTRB(20, 10, 10, 0),
              child: Text(
                'CRAFTSMAN  HOUSE',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.black
                ),
              ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    '520 N Btoudry Ave Los Angeles'
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
                            Icons.bookmark_border,
                            color: Colors.black,
                          )),
                    ),
                  ),
                ],
              ),
              ),
            const   Padding(
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
        style: TextStyle(color: Colors.black),
          ),
           SizedBox(width: 15),
             Icon(
            Icons.bathtub,
             color: Colors.yellow,
              ),
             SizedBox(width: 10),
                Text(
                '4 Baths',
                style: TextStyle(color: Colors.black),
                ),
                 SizedBox(width: 15),
               Icon(
               Icons.directions_car,
                color: Colors.yellow,
                 ),
                 SizedBox(width: 10),
                  Text(
                 '1 Garage',
                 style: TextStyle(color: Colors.black),
              ),
           SizedBox(width: 15),
        Icon(
           Icons.kitchen,
        color: Colors.yellow,
           ),
           SizedBox(width: 10),
        Text(
            '1 kitchen',
               style: TextStyle(color: Colors.black),
             ),
           ],
          ),
         ),
         ListTile(
          leading: const CircleAvatar(
            backgroundImage: AssetImage('assets/DP.jpg'),
          ),
          title: const Text('Mohsin khan', style: TextStyle(color: Colors.black),),
          subtitle: const Text('Owner craftsman house'),
          trailing: Container(
            height: 50,
            width: 80,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: const Color.fromARGB(255, 7, 54, 7)
            ),
            child: const Center(
              child: Padding(
                padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
              child:  Row(
                children: [
                  Icon(Icons.phone, color: Colors.white,),
                  Text(
                    'Call',
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
              ),
            ),
          ),
         ),
        const Padding(
          padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
          child: Text(
            "Assalamu alaikum' Is gar banane me 2.5 saal lagey te is gar me apko 4 bedrooms honge, aur uske saath 4 bathrooms honge. Aur car k leye aek alag garage "
            "Or 2 kitchen bi he Osi k sath ye gar 2 manzil gar he Or osi k sath apko bohoot khubsurat Garden hoga  Agar Apko ye Gar pasand he to"
            "is number se 03000000  contect kare.... Shukarya"
          ),
          ),
         const Padding(
            padding: EdgeInsets.fromLTRB(20, 10, 0, 0),
            child: Text(
              'Gallery',
               style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.black
               ),
            ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 5, 20, 0),
              child: Row(
                children: [
                  Container(
                    height: 100,
                    width: 105,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      image: const DecorationImage(
                        image: AssetImage(
                          'assets/Bedroom.webp'
                        ),
                        fit: BoxFit.cover,
                        )
                    ),
                  ),
                 const SizedBox(width: 10,),
                  Container(
                    height: 100,
                    width: 105,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      image: const DecorationImage(
                        image: AssetImage(
                          'assets/Washing.jpg'
                        ),
                        fit: BoxFit.cover,
                        )
                    ),
                  ),
                   const SizedBox(width: 10,),
                  Container(
                    height: 100,
                    width: 105,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      image: const DecorationImage(
                        image: AssetImage(
                          'assets/Launch.jpg'
                        ),
                        fit: BoxFit.cover,
                        )
                    ),
                  ),
                   const SizedBox(width: 10,),
                  Container(
                    height: 100,
                    width: 105,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      image: const DecorationImage(
                        image: AssetImage(
                          'assets/Dining.webp'
                        ),
                        fit: BoxFit.cover,
                        )
                    ),
                  ),
                ],
              ),
              ),
             const Padding(
                padding: EdgeInsets.fromLTRB(25, 20, 0, 0),
                child: Text(
                  'Price',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black
                  ),
                ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 5, 20, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                     const Text(
                        '\$1.000.000',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.black
                        ),
                      ),
                      ElevatedButton(
                        onPressed: (){

                        },
                        style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 5, 71, 52),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 100, vertical: 15),
                    ),
                        child: const Text('BUY    NOW', style: TextStyle(color: Colors.white),))
                    ],
                  ),
                )
          ],
        ),
      ),
    );
  }
}