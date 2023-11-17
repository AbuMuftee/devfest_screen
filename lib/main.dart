import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Devfest screen',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.black,
          brightness: Brightness.dark,
        ),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        padding: const EdgeInsets.only(top: 45, bottom: 16),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/woman.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            const Text(
              'Menu',
              style: TextStyle(fontSize: 25),
            ),
            const Divider(thickness: 3, color: Colors.white70),
            const Spacer(),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 50),
              child: Text(
                'We wish to provide professional dental services that match the current technologies',
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 70),
            const Text(
              'Trusted Dentist in Abuja',
              textAlign: TextAlign.center,
            ),
            const Text(
              'Dental\nCare',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 70, fontWeight: FontWeight.bold, height: .8),
            ),
            const SizedBox(height: 25),
            ElevatedButton(onPressed: () {}, child: const Text('Get started'))
          ],
        ),
      ),
    );
  }
}
