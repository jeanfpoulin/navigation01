import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: EcranPrincipal(),
    );
  }
}

class EcranPrincipal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            FlatButton(
              child: Text('Koala'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return EcranDetails("Voici un Koala.");
                  }),
                );
              },
            ),
            FlatButton(
              child: Text('Metroid Dread'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return EcranDetails("Voici le jeu Metroid Dread.");
                  }),
                );
              },
            ),
            FlatButton(
              child: Text('Loch Ness'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return EcranDetails("Voici le monstre Loch Ness.");
                  }),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class EcranDetails extends StatelessWidget {
  String details = "Details non disponible";

  EcranDetails(String details) {
    this.details = details;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            Text(details),
            FlatButton(
              child: Text('Fermer!'),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
