import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('AYYMDFRAZSHAKE')),
          backgroundColor: Colors.cyan,
        ),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: OutlinedButton(
                    onPressed: () async {
                      final player = AudioPlayer();
                      await player.play(AssetSource('jib.wav'));
                    },
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.lime)),
                    child: const Text(
                      'JBQ2',
                      style: TextStyle(fontSize: 40, color: Colors.white),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: OutlinedButton(
                    onPressed: () async {
                      final player = AudioPlayer();
                      await player.play(AssetSource('ayf.wav'));
                    },
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            Colors.blueAccent)),
                    child: const Text(
                      'Nalli biryani',
                      style: TextStyle(fontSize: 40, color: Colors.white),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: OutlinedButton(
                    onPressed: () async {
                      final player = AudioPlayer();
                      await player.play(AssetSource('afs.wav'));
                    },
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.redAccent)),
                    child: const Text(
                      'Chotu',
                      style: TextStyle(fontSize: 40, color: Colors.white),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: OutlinedButton(
                    onPressed: () async {
                      final player = AudioPlayer();
                      await player.play(AssetSource('has.wav'));
                    },
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.blueGrey)),
                    child: const Text(
                      'Hassan',
                      style: TextStyle(fontSize: 40, color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
