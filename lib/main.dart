import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(const XylophoneApp());

class XylophoneApp extends StatelessWidget {
    const XylophoneApp({Key? key}) : super(key: key);

    void playSound(String soundName) {
        final AudioCache player = AudioCache();
        player.play('$soundName.wav');
    }

    Widget buildKey(
            {Color color = Colors.white,
            required String soundName,
            String label = ''}) {
        return Expanded(
            child: TextButton(
                child: Text(
                    label,
                    style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                    ),
                ),
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(color),
                ),
                onPressed: () {
                    playSound(soundName);
                },
            ),
        );
    }

    @override
    Widget build(BuildContext context) {
        return MaterialApp(
            home: Scaffold(
                backgroundColor: Colors.black,
                body: SafeArea(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                            buildKey(
                                    soundName: 'assets_note1', color: Colors.red, label: 'Dó'),
                            buildKey(
                                    soundName: 'assets_note2', color: Colors.orange, label: 'Ré'),
                            buildKey(
                                    soundName: 'assets_note3', color: Colors.yellow, label: 'Mi'),
                            buildKey(
                                    soundName: 'assets_note4', color: Colors.green, label: 'Fá'),
                            buildKey(
                                    soundName: 'assets_note5', color: Colors.teal, label: 'Sol'),
                            buildKey(
                                    soundName: 'assets_note6', color: Colors.blue, label: 'Lá'),
                            buildKey(
                                    soundName: 'assets_note7', color: Colors.purple, label: 'Si'),
                        ],
                    ),
                ),
            ),
        );
    }
}
