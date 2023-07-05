import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _numeroPage=0;
  setCurrentIndex(int index){
    setState(() {
      _numeroPage = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: [
          Acceuil(),
          Ajout()
        ][_numeroPage],
        bottomNavigationBar: BottomNavigationBar(
          /*Couleur par selection
          selectedItemColor: Colors.red,
          /*Couleur par defaut avant secltion*/
          unselectedItemColor: Colors.yellow,*/
          iconSize: 40,
          backgroundColor: Colors.purple,

          /*Fonction au click*/
          onTap: (index) => setCurrentIndex(index),
          //Couleur par selection
          currentIndex: _numeroPage,
          items: const[
            BottomNavigationBarItem(
                icon:Icon(
                  Icons.home
                ),
              label: 'Acceuil'
            ),
            BottomNavigationBarItem(
                icon:Icon(
                  Icons.add
                ) ,
              label: 'Ajout'
            )
          ],
        ),
      ),
    );
  }
}
class Acceuil extends StatelessWidget {
  const Acceuil({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      home: Scaffold(
        appBar: AppBar(
          title:const Text('piergy-Developpement'),
        ),
        body:const Center(
          child: Text("Bienvenue cher utilisateur , vous êtes sur la page d'acceuil",
          style:TextStyle(
              fontSize: 30
          )
          ),
          ),
        ),
      );
  }
}



class Ajout extends StatelessWidget {
  const Ajout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      home: Scaffold(
        appBar: AppBar(
          title:const Text('piergy-Developpement'),
        ),
        body:const Center(
          child: Text("C'est la page d'ajout",
              style:TextStyle(
                  fontSize: 30
              )
          ),
        ),
      ),
    );
  }
}

