import 'package:flutter/material.dart';
import 'package:live_streaming_zego_ui_kit/live_page.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  final liveID = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: TextField(
                controller:  liveID,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Live ID...'
                ),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>  LivePage(
                        liveID: liveID.text.trim(),
                        isHost: true,
                      ),
                    ));
              },
              child: const Text("Start a live"),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>  LivePage(
                        liveID: liveID.text.trim(),
                        isHost: false,
                      ),
                    ));
              },
              child: const Text("Watch a live"),
            )
          ],
        ),
      ),
    );
  }
}
