import 'package:flutter/material.dart';
import 'mapa1.dart';
import 'mapa2.dart';
import 'mapa3.dart';

class Principal extends StatefulWidget {
  const Principal({super.key});

  @override
  State<Principal> createState() => _HomePageState();
}

//Criando a parte de cima do app!
class _HomePageState extends State<Principal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MAPAS"),
        centerTitle: true,
        backgroundColor: Colors.greenAccent,
      ),


      body: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            //Definindo o icone que ficará no centro e também estilizando
            const Icon(

              Icons.map_sharp,
              size: 140.0,
              color: Colors.greenAccent,
            ),

            //Texto que aparecerá em baixo!
            Text(
              "WAZES ATUALIZADOS",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white, fontSize: 25.0),
            ),
            Text(
              "",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white, fontSize: 25.0),
            ),

            //Definindo onde vai ficar os botões que irá para os outros app!
            Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[

                  //Definindo o botão que vai para o APP "IMC", lembrando essa rota não é a nomeada, pois ja estava feito a nomeada
                  ElevatedButton(
                    onPressed: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const Mapa1())
                      );
                    },
                    //estilizando o botão!
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.green),
                    ),

                    child: const Text(
                      'Mapa 1',
                      style: TextStyle(color: Colors.black), // Definindo a cor do texto como branca
                    ),

                  ),
                  //Definindo o botão que vai para o APP "Contador", lembrando essa rota não é a nomeada, pois ja estava feito a nomeada
                  ElevatedButton(
                    onPressed: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const Mapa2())
                      );
                    },
                    //estilizando o botão!
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.lightGreen),
                    ),
                    child: const Text(
                      'Mapa 2',
                      style: TextStyle(color: Colors.black), // Definindo a cor do texto como branca
                    ),
                  ),

                  //Definindo o botão que vai para o APP "Usuario", lembrando essa rota não é a nomeada, pois ja estava feito a nomeada
                  ElevatedButton(
                    onPressed: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const Mapa3())
                      );
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.white54),
                      );
                    },
                    //Estilizando o botão!
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.greenAccent),
                    ),
                    //colocando texto dentro do botão
                    child: const Text(
                      'Mapa 3',
                      style: TextStyle(color: Colors.black), // Definindo a cor do texto como branca
                    ),
                  ),
                  //Definindo o botão que vai para o APP "Produto", lembrando essa rota não é a nomeada, pois ja estava feito a nomeada
                ]),
          ],
        ),
      ), // Botão para executar o calculo do IMC,
    );
  }
}