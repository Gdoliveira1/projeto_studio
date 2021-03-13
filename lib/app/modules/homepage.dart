import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  showAlertDialog2(BuildContext context) {
    Widget cancelaButton = FlatButton(
      child: Text("Cancelar"),
      onPressed: () {},
    );
    Widget continuaButton = FlatButton(
      child: Text("Continar"),
      onPressed: () {},
    );
    //configura o AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text("Pagamento"),
      content: Text("Clique em aceitar para concluir a compra"),
      actions: [
        cancelaButton,
        continuaButton,
      ],
    );
    //exibe o diálogo
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.grey[200],
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25, vertical: 40),
        child: ListView(
          children: [
            Text(
              "Buy Using QR code",
              style: TextStyle(
                fontFamily: 'FredokaOne',
                fontSize: 34,
                color: Color.fromRGBO(51, 51, 51, 1),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  color: Colors.blue,
                  height: 5,
                  width: 180,
                  padding: EdgeInsets.only(bottom: 30),
                ),
              ],
            ),
            SizedBox(
              height: 70,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(
                        15.0) //                 <--- border radius here
                    ),
              ),
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Column(
                children: [
                  Row(
                    children: [
                      Icon(AntDesign.qrcode),
                      SizedBox(
                        width: 15,
                      ),
                      Text("Leitor QR code",
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 16,
                          )),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 18),
                    child: Text(
                      "Aponte o QR code para a placa dos objetos e aguarde a leitura concluir",
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 12,
                          color: Colors.grey[900]),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    alignment: Alignment.centerRight,
                    child: new RaisedButton(
                      color: Color.fromRGBO(70, 96, 234, 1),
                      onPressed: () => print("Button Pressed"),
                      shape: RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(8.0),
                      ),
                      child: new Text(
                        "Comprar",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(
                        15.0) //                 <--- border radius here
                    ),
              ),
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Column(
                children: [
                  Row(
                    children: [
                      Icon(AntDesign.shoppingcart),
                      SizedBox(
                        width: 15,
                      ),
                      Text("Itens do carrinho",
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 16,
                          )),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 18),
                    child: Text(
                      "Verifique os itens adicionados no carrinho",
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 12,
                          color: Colors.grey[900]),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    alignment: Alignment.centerRight,
                    child: new RaisedButton(
                      color: Color.fromRGBO(70, 96, 234, 1),
                      onPressed: () => print("alerta"),
                      shape: RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(8.0),
                      ),
                      child: new Text(
                        "Carrinho",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(
                        15.0) //                 <--- border radius here
                    ),
              ),
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Column(
                children: [
                  Row(
                    children: [
                      Icon(AntDesign.creditcard),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        "Total da compra",
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 160),
                    child: Text(
                      "Valor a Pagar",
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 12,
                          color: Colors.grey[900]),
                    ),
                  ),
                  Padding(
                      padding: const EdgeInsets.only(right: 150),
                      child: Text(
                        "R\$ 108,12",
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 22,
                            color: Color.fromRGBO(70, 96, 234, 1)),
                      )),
                  Container(
                    alignment: Alignment.centerRight,
                    child: RaisedButton(
                      color: Color.fromRGBO(66, 190, 115, 1),
                      onPressed: () {
                        showAlertDialog2(context);
                      },
                      shape: RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(8.0),
                      ),
                      child: new Text(
                        "Pagar",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
