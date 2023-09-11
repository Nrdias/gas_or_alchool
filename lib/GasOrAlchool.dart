import 'package:flutter/material.dart';

class GasOrAlchool extends StatefulWidget {
  const GasOrAlchool({super.key});
  @override
  State<GasOrAlchool> createState() => _GasOrAlchoolState();
}

class _GasOrAlchoolState extends State<GasOrAlchool> {
  TextEditingController _textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gasolina ou Álcool'),
        backgroundColor: Colors.indigo,
      ),
      body: Container(
        padding: EdgeInsets.all(32),
        child:Column(
          children: <Widget>[
            Padding(padding: EdgeInsets.only(bottom: 32),
              child: Image.asset('images/logo.png'),
            ),
            Text(
                'Saiba qual a melhor opção para abastecimento do seu carro!',
                style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                ),
            ),
            TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Preço do Álcool. ex: 1.59',
                ),
                onSubmitted: (String e){},
              ),
            TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Preço da Gasolina. ex: 1.59',
                ),
                onSubmitted: (String e){},
              ),
           ElevatedButton(
                  onPressed: (){
                    print(_textEditingController.text);
                  },
                  child: Text('Calcular')
              ),
          ],
        ),
      )
    );
  }
}
