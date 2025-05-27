import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  List<Contato> contatos = [
    Contato("Matheus Bailon", "Matheus@email"),
    Contato("Larissa reis", "Larissa@email"),
    Contato("Kaique Aleixo", "Kaique@email"),
    Contato("Matheus Bailon", "Matheus@email"),
    Contato("Larissa reis", "Larissa@email"),
    Contato("Kaique Aleixo", "Kaique@email"),
    Contato("Matheus Bailon", "Matheus@email"),
    Contato("Larissa reis", "Larissa@email"),
    Contato("Kaique Aleixo", "Kaique@email"),
    Contato("Matheus Bailon", "Matheus@email"),
    Contato("Larissa reis", "Larissa@email"),
    Contato("Kaique Aleixo", "Kaique@email"),
  ];

  int count = 0;
  
  

  favoritar(int index){
    setState(() {
      contatos[index].apertado = !contatos[index].apertado;
      if(contatos[index].apertado){
        count++;
      }else{
        count--;
      }
    });
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Contatos Favoritos: ${count}"),
        ),
        body: ListView.builder(
          itemCount: contatos.length,
          
          itemBuilder: (context, index) {
            return ListTile(
              leading: CircleAvatar(child: Text(contatos[index].nomeCompleto[0]),),
              title: Text(contatos[index].nomeCompleto),
              subtitle: Text(contatos[index].email),
              trailing: IconButton(onPressed: () => favoritar(index), icon: contatos[index].apertado ? Icon(Icons.favorite, color: Colors.red,) : Icon(Icons.favorite_border)),
            );
          }),
      ),
    );
  }
}

class Contato{
  String nomeCompleto;
  String email;
  bool apertado = false;

  Contato(this.nomeCompleto, this.email){
    this.apertado = false;
  }
}

