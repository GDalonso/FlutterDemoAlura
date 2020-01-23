import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: FormularioTransferencia()));

class listaTransferencias extends StatelessWidget {
//  Essa classe contem a lista de transferências, retorna a lista de widgets para o body do nosso app
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          itemTransferencia("200", "batata"),
          itemTransferencia("400", "oporra")
        ],
      ),
      appBar: AppBar(
        title: Text("hue"),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add_shopping_cart),
      ),
    );
  }
}

class itemTransferencia extends StatelessWidget {
  final String valor;
  final String numConta;

//ctor criado com alt+insert
  itemTransferencia(this.valor, this.numConta);

  @override
  Widget build(BuildContext context) {
    return Card(
        child: ListTile(
      leading: Icon(Icons.add_to_queue),
      title: Text(valor),
      subtitle: Text(numConta),
    ));
  }
}

class FormularioTransferencia extends StatelessWidget {
  final TextEditingController _fieldConta= TextEditingController();
  final TextEditingController _fieldValor= TextEditingController();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text("Lista de trasnferencias"),
        ),
        body: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: _fieldConta,
                decoration: InputDecoration(labelText: "Conta", hintText: "0000"),
                style:TextStyle(fontSize: 24.0),
                keyboardType: TextInputType.number,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: _fieldValor,
                decoration: InputDecoration(labelText: "Valor", hintText: "0.00", icon: Icon(Icons.monetization_on)),
                style:TextStyle(fontSize: 24.0),
                keyboardType: TextInputType.number,
              ),
            ),
            RaisedButton(
              child: Text("Transferir"),
              onPressed: (){Transferir(int.tryParse(_fieldConta.text), double.tryParse(_fieldValor.text));},
            )
          ],
        ));
  }
}

void Transferir(conta, valor){
  if (conta != null && valor != null){
    print("transferindo");
  }
}