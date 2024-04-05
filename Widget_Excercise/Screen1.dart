import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const Screen1());
}

class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: StatelessWidget1(title: 'iJ Tracker'),
    );
  }
}

class StatelessWidget1 extends StatelessWidget {
  const StatelessWidget1({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: const Icon(Icons.question_mark_outlined),
          title: Text(
            title,
          ),
          actions: [
            IconButton(icon: const Icon(Icons.notifications), onPressed: () {}),
            IconButton(
              icon: const Icon(Icons.settings),
              onPressed: () {},
            ),
          ],
          backgroundColor: Colors.blue,
        ),
        body: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          const ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage("./assets/img1.jpg"),
              radius: 30,
            ),
            title: Text('Robert Steven'),
            subtitle: Row(
              children: [
                Icon(
                  Icons.car_crash,
                  color: Colors.blue,
                ),
                Text('245UJD')
              ],
            ),
            trailing: Text("Log Out"),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 20),
            width: double.infinity,
            height: 30,
            decoration: const BoxDecoration(color: Colors.blue),
            child: const Center(
              child: Text(
                "Online | Battery : 90%",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ),
          const Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            MyCard(text: "Map", icon: Icons.map),
            MyCard(text: 'Live Location', icon: Icons.location_pin),
            MyCard(text: 'History ', icon: Icons.history),
          ]),
          const Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            MyCard(text: "Set Geofence", icon: Icons.map),
            MyCard(text: 'Detail info', icon: Icons.info),
            MyCard(text: 'History ', icon: Icons.history),
          ]),
          const Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            MyCard(text: "Change center Number", icon: Icons.phone_android),
            MyCard(text: 'Disabled Menu', icon: Icons.key),
            MyCard(text: 'set GPS ', icon: Icons.hourglass_empty_outlined),
          ]),
          const Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            MyCard(text: "Restart Device", icon: Icons.restart_alt),
            MyCard(text: 'Device Saving mode', icon: Icons.battery_saver),
            MyCard(text: 'Normal Mode ', icon: Icons.battery_full),
          ]),
          const Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            MyCard(
                text: "Shutdown device",
                icon: Icons.power_settings_new_outlined),
            MyCard(text: 'Disabled Menu', icon: Icons.notes_rounded),
            MyCard(text: 'Contact Us ', icon: Icons.contact_mail),
          ]),
        ]));
  }
}

class MyCard extends StatelessWidget {
  const MyCard({
    super.key,
    required this.text,
    required this.icon,
  });

  final String text;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      margin: const EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Icon(icon, color: Colors.blue), Text(text)],
      ),
    );
  }
}
