import 'dart:async';
import 'package:flutter/material.dart';
import 'package:notes_app/views/notes_view.dart';

class ScreenSplashNotes extends StatelessWidget {
  const ScreenSplashNotes({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.dark, fontFamily: 'Poppins'),
      home: const ScreenSplash(),
    );
  }
}

class ScreenSplash extends StatefulWidget {
  const ScreenSplash({super.key});

  @override
  State<ScreenSplash> createState() => _ScreenSplashState();
}

class _ScreenSplashState extends State<ScreenSplash> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => const NotesView()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(32),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'write your',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: Text('Notes',
                    style: TextStyle(
                        color: Colors.yellow.shade800,
                        fontSize: 84,
                        fontWeight: FontWeight.bold)),
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(
                    children: [
                      Text('with',
                          style: TextStyle(color: Colors.white, fontSize: 16)),
                      Text('Ahmad Notes . . . ',
                          style: TextStyle(color: Colors.white, fontSize: 16)),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
