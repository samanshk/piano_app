import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  static AudioCache player = AudioCache();

  Widget whiteButton(id) {
    return Expanded(
        child: MaterialButton(
          onPressed: () {whiteSound(id);},
          // minWidth: 130,
          // height: 150,
          color: Colors.white,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10), bottomRight: Radius.circular(10)), side: BorderSide(color: Colors.black, width: 1)),
      ),
    );
  }
  Widget blackButton(id) {
    return Container(
        child: MaterialButton(
          onPressed: () {blackSound(id);},
          minWidth: 50,
          height: 170,
          color: Colors.black,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10), bottomRight: Radius.circular(10)), side: BorderSide(color: Colors.black, width: 1)),
      ),
    );
  }

  whiteSound(sound) {
    switch (sound) {
      case '1':
        player.play('A.wav');
        break;
      case '2':
        player.play('B.wav');
        break;
      case '3':
        player.play('C.wav');
        break;
      case '4':
        player.play('D.wav');
        break;
      case '5':
        player.play('D1.wav');
        break;
      case '6':
        player.play('E.wav');
        break;
      case '7':
        player.play('E1.wav');
        break;
      case '8':
        player.play('F.wav');
        break;
      case '9':
        player.play('F1.wav');
        break;
      case '10':
        player.play('G.wav');
        break;
      default:
    }
  }

  blackSound(sound) {
    switch (sound) {
      case '1':
        player.play('A_Drum.wav');
        break;
      case '2':
        player.play('B_Drum.wav');
        break;
      case '3':
        player.play('C_Drum.wav');
        break;
      case '4':
        player.play('D_Drum.wav');
        break;
      case '5':
        player.play('D1_Drum.wav');
        break;
      case '6':
        player.play('E_Drum.wav');
        break;
      default:
    }
  }


  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Piano',
      theme: ThemeData(
        primaryColor: Colors.black
      ),
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text('Piano')
        ),
        body: Stack(
          children: <Widget>[
            Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                whiteButton('1'),
                whiteButton('2'),
                whiteButton('3'),
                whiteButton('4'),
                whiteButton('5'),
                whiteButton('6'),
                whiteButton('7'),
                whiteButton('8'),
                whiteButton('9'),
                whiteButton('10'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                blackButton('1'),
                blackButton('2'),
                Padding(padding: EdgeInsets.all(3),),
                blackButton('3'),
                blackButton('4'),
                blackButton('5'),
                Padding(padding: EdgeInsets.all(3),),
                blackButton('6')
              ],
            )
          ],
        ),
      ),
    );
  }
}
