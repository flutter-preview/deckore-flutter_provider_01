import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'fish_model.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (context) => FishModel(name: 'Salmon', number: 10, size: 'big'),
      child: const MaterialApp(
        home: FishOrder(),
      ),
    );
  }
}

class FishOrder extends StatelessWidget {
  const FishOrder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Fish Order"),
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              'Fish name: ${Provider.of<FishModel>(context).name}',
              style: const TextStyle(fontSize: 20),
            ),
            const SizedBox(
              height: 20,
            ),
            High(),
          ],
        ),
      ),
    );
  }
}

class High extends StatelessWidget {
  const High({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'SpicyA is located at high place',
          style: TextStyle(fontSize: 16),
        ),
        SizedBox(),
        SpicyA(),
      ],
    );
  }
}

class SpicyA extends StatelessWidget {
  const SpicyA({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Text(
        'Fish Number: ${Provider.of<FishModel>(context).number}',
        style: TextStyle(
            fontSize: 16, color: Colors.red, fontWeight: FontWeight.bold),
      ),
      Text(
        'Fish Size: ${Provider.of<FishModel>(context).size}',
        style: TextStyle(
            fontSize: 16, color: Colors.red, fontWeight: FontWeight.bold),
      ),
      SizedBox(
        height: 20,
      ),
      Middle(),
    ]);
  }
}

class Middle extends StatelessWidget {
  const Middle({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'SpicyB is located at high place',
          style: TextStyle(fontSize: 16),
        ),
        SizedBox(),
        SpicyB(),
      ],
    );
  }
}

class SpicyB extends StatelessWidget {
  const SpicyB({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Text(
        'Fish Number: ${Provider.of<FishModel>(context).number}',
        style: TextStyle(
            fontSize: 16, color: Colors.red, fontWeight: FontWeight.bold),
      ),
      Text(
        'Fish Size: ${Provider.of<FishModel>(context).size}',
        style: TextStyle(
            fontSize: 16, color: Colors.red, fontWeight: FontWeight.bold),
      ),
      SizedBox(
        height: 20,
      ),
      Low(),
    ]);
  }
}

class Low extends StatelessWidget {
  const Low({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'SpicyC is located at high place',
          style: TextStyle(fontSize: 16),
        ),
        SizedBox(),
        SpicyC(),
      ],
    );
  }
}

class SpicyC extends StatelessWidget {
  const SpicyC({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Text(
        'Fish Number: ${Provider.of<FishModel>(context).number}',
        style: TextStyle(
            fontSize: 16, color: Colors.red, fontWeight: FontWeight.bold),
      ),
      Text(
        'Fish Size: ${Provider.of<FishModel>(context).size}',
        style: TextStyle(
            fontSize: 16, color: Colors.red, fontWeight: FontWeight.bold),
      ),
      SizedBox(
        height: 20,
      ),
      End(),
    ]);
  }
}

class End extends StatelessWidget {
  const End({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Out of End',
          style: TextStyle(fontSize: 16),
        ),
        SizedBox(),
      ],
    );
  }
}
