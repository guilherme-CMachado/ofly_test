import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:ofly_tech_test/core/models/user_model.dart';

class HomePage extends StatefulWidget {
  UserModel userModel;
  HomePage({super.key, required this.userModel});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  UserModel? userModel;
  final travelStream =
      FirebaseFirestore.instance.collection('travels').snapshots();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(
            Icons.arrow_back,
          ),
        ),
        title: const Text("Home"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.dark_mode),
          ),
        ],
      ),
      body: StreamBuilder(
          stream: travelStream,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return Column(
                children: [
                  Text("Olá!"),
                  const Spacer(),
                  Container(
                    margin: const EdgeInsets.all(18),
                    child: const Center(
                      child: Text(
                          "Parece que você não tem uma viagem agendada, vamos marcar uma?"),
                    ),
                  ),
                  const Spacer(),
                  FloatingActionButton(
                    tooltip: "Marcar Viagem",
                    onPressed: () {
                      Navigator.of(context).pushNamed("/travels");
                    },
                    child: const Icon(Icons.airplane_ticket),
                  ),
                  const Spacer(),
                ],
              );
            }
            return Column(
              children: [
                Container(
                  margin: const EdgeInsets.all(8),
                  child: const Text("Olá! Para onde iremos viajar?"),
                ),
                Container(
                  height: 100, // Ajuste a altura conforme necessário
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 4,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 150, // Ajuste a largura conforme necessário
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.blue,
                          ),
                          child: Center(
                            child: Text(
                              "Imagem $index",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            );
          }),
    );
  }
}
