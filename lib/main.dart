// Creado por Crystian Enrique Suarez Cuevas <200527>
// Asignatura Desarrollo Movil Integral
// Decimo Cuatrimestre Grupo A
// Profesor MTI. Marco Antonio Ramirez Hernandez

// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:soundpool/soundpool.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // Reconfigurar funciones para una interfaz (cambia) en flutter es el overrride
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Crystian',
      theme: ThemeData(
        //Esta forma es valida para cambiar el color de pantalla del ody
        // scaffoldBackgroundColor: Color(Colors.blueGrey),
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 183, 64, 58)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Stateless Widgets'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // final player = AudioPlayer();
  // AudioPlayer audioPlayer = AudioPlayer();
  //Source source = Source("assets/sounds/yamete_kudasai.mp3");

  /* @override
  void initState() {
    super.initState();
    audioPlayer.setSource(AssetSource("assets/sounds/1.mp3"));
  } */

  Widget createCard() {
    return Card(
      elevation: 0,
      color: Color.fromARGB(164, 56, 229, 25),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Container(
        padding: const EdgeInsets.all(10),
        child: Column(children: [
          const Text(
            "</Me Encanta Programar>",
            style: TextStyle(fontFamily: 'saR', fontSize: 20),
          ),
          const SizedBox(
            height: 10,
          ),
          Icon(
            Icons.favorite,
            color: Colors.brown.shade600,
            size: 50,
          )
        ]),
      ),
    );
  }

  Widget createCard2() {
    return Card(
      elevation: 0,
      color: const Color.fromRGBO(25, 229, 215, 0.648),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Container(
        padding: const EdgeInsets.all(10),
        child: Column(children: [
          const Text(
            "Universidad Tecnologica\n de Xicotepec de Juarez",
            style: TextStyle(fontFamily: 'saR', fontSize: 20),
          ),
          const SizedBox(
            height: 10,
          ),
          Icon(
            Icons.account_balance_rounded,
            color: Colors.brown.shade600,
            size: 50,
          )
        ]),
      ),
    );
  }

  Widget createCard3() {
    return Card(
      elevation: 0,
      color: const Color.fromRGBO(25, 229, 215, 0.648),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Container(
        padding: const EdgeInsets.all(10),
        child: Column(children: [
          const Text(
            "Crystian Suarez - 200527",
            style: TextStyle(fontFamily: 'saR', fontSize: 20),
          ),
          const SizedBox(
            height: 10,
          ),
          Icon(
            Icons.account_tree_rounded,
            color: Colors.brown.shade600,
            size: 50,
          )
        ]),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      // background se implementa en Scaftold para fondo de pantalla
      appBar: AppBar(
        elevation: 100,
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
          Colors.yellow,
          Colors.red,
          Color(0xFFfe4a97),
          Color(0xFFe17763),
          Color(0xFF68998c)
        ], stops: [
          0.1,
          0.4,
          0.6,
          0.8,
          1
        ], begin: Alignment.topCenter, end: Alignment.bottomLeft)),
        child: Center(
            child: Column(
          children: [
            createCard(),
            createCard2(),
            createCard3(),
          ],
        )),
        /* child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Center(
            child: Column(children: [
              createCard(),
              createCard2(),
              createCard3(),
              /* ElevatedButton(
                  onPressed: () {
                    _soundbutton();
                    // audioPlayer.play(UrlSource('assets/sounds/1.mp3'));
                  },
                  child: Text('texttt')) */
            ]),
          ),
        ), */
      ),
    );
  }

  /* Future<void> _soundbutton() async {
    Soundpool pool = Soundpool(streamType: StreamType.notification);

    int soundId 
        await rootBundle.load("`assets/1.mp3").then((ByteData soundData) {
      return pool.load(soundData);
    });
    int streamId = await pool.play(soundI=d);
  } */
}
