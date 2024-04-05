import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.arrow_left,
                  color: Colors.white,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.shopping_cart,
                      color: Colors.white,
                    ),
                    Icon(
                      Icons.notification_add,
                      color: Colors.white,
                    ),
                  ],
                ),
                TextField()
              ],
            ),
          ),
          backgroundColor: Colors.blue,
        ),
        body: const Page2(),
      ),
    );
  }
}

class Form extends StatelessWidget {
  const Form({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Padding(
        padding: EdgeInsets.all(100.0),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter Username',
                ),
              ),
            ]),
      ),
    );
  }
}

class StackTemp extends StatelessWidget {
  const StackTemp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Bottom widget
        Container(
          width: 400,
          height: 400,
          color: Colors.blue,
        ),
        // Top widget
        Positioned(
          top: 0,
          left: 0,
          child: Container(
            width: 100,
            height: 50,
            color: Colors.lightBlue,
            child: const Center(
              child: Column(
                children: [
                  Text(
                    'BARDI',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    'All blah blha',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Positioned(
          top: 350,
          left: 0,
          child: Container(
            width: 400,
            height: 100,
            // color: Colors.red,
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconTemp(),
                    IconTemp(),
                    IconTemp(),
                    IconTemp(),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class IconTemp extends StatelessWidget {
  const IconTemp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Icon(Icons.message),
        Column(
          children: [
            Text(
              'Multiple',
              style: TextStyle(
                color: Colors.white,
                fontSize: 5,
              ),
            ),
            Text(
              'Scenario',
              style: TextStyle(
                color: Colors.white,
                fontSize: 5,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // const StackTemp(),
        Expanded(child: Image.asset('assets/img1.jpg')),
        const ListTile(
          leading: Text(
            '\$8.6',
            style: TextStyle(
                color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
          ),
          trailing: Icon(Icons.heart_broken),
        ),
        const Text(
          'BARDI SMART LIGHT BULB Lamp Bolglam LED wifi PFDASS 12W 12 Watt Homs IoT ',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: const Row(
                children: [
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                  ),
                  Text(
                    '5.0 ',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '(354) ',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w100,
                    ),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: Text('|', style: TextStyle(fontSize: 20)),
            ),
            Container(
              child: const Row(
                children: [
                  Text(
                    '540 Sale ',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w100,
                    ),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: Text('|', style: TextStyle(fontSize: 20)),
            ),
            Container(
              child: const Row(
                children: [
                  Icon(
                    Icons.location_on,
                    color: Colors.black38,
                  ),
                  Text(
                    'Brooklyn ',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w100,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        const Padding(
          padding: EdgeInsets.all(8.0),
        ),
        const Row(
          children: [
            Text(
              'Variant ',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
              ),
            ),
          ],
        ),
        const Row(
          children: [
            Text(
              'Size ',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w100),
            ),
            Text(
              'XS ',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ElevatedButton(
              onPressed: () {
                print('object');
              },
              child: Container(
                color: Colors.blue[200],
                child: const Text('XS'),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                print('object');
              },
              child: const Text('XS'),
            ),
            ElevatedButton(
              onPressed: () {
                print('object');
              },
              child: const Text('XS'),
            ),
            ElevatedButton(
              onPressed: () {
                print('object');
              },
              child: const Text('XS'),
            ),
            ElevatedButton(
              onPressed: () {
                print('object');
              },
              child: const Text('XS'),
            ),
            ElevatedButton(
              onPressed: () {
                print('object');
              },
              child: const Text('XS'),
            ),
          ],
        ),
        const Row(
          children: [
            Text(
              'Size ',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w100),
            ),
            Text(
              'XS ',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: ElevatedButton(
                onPressed: () {
                  print('object');
                },
                child: Container(
                  color: Colors.blue[200],
                  child: Text('XS'),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                print('object');
              },
              child: const Text('XS'),
            ),
            ElevatedButton(
              onPressed: () {
                print('object');
              },
              child: const Text('XS'),
            ),
            ElevatedButton(
              onPressed: () {
                print('object');
              },
              child: const Text('XS'),
            ),
            ElevatedButton(
              onPressed: () {
                print('object');
              },
              child: const Text('XS'),
            ),
            ElevatedButton(
              onPressed: () {
                print('object');
              },
              child: const Text('XS'),
            ),
          ],
        ),
        const Divider(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              color: Colors.blue,
              child: const Icon(
                Icons.message,
                color: Colors.white,
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  print('object');
                },
                child: Container(
                    width: 400,
                    height: 25,
                    child: Center(child: const Text('Add to Shoppung Chart')))),
          ],
        )
      ],
    );
  }
}
