import 'package:flutter/material.dart';

class CardInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.2,
      child: Card(
        margin: EdgeInsets.only(right: 20),
        child: Column(
          children: [
            Expanded(
              child: mainBlock(),
            ),
            otherBloc(),
          ],
        ),
      ),
    );
  }

  Widget mainBlock() {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.credit_card,
                      size: 30,
                    ),
                    SizedBox(width: 15),
                    Text(
                      'Cartão de Crédito',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
                Spacer(),
                Text(
                  'FATURA ATUAL',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.blue[400],
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'R\$ 1.546,25',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 28,
                    color: Colors.blue[400],
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text.rich(
                  TextSpan(
                    text: 'Limite disponível ',
                    children: [
                      TextSpan(
                        text: '4.542,22',
                        style: TextStyle(
                          color: Colors.green[400],
                        ),
                      ),
                    ],
                    style: TextStyle(fontSize: 18),
                  ),
                ),
                Spacer(),
              ],
            ),
          ),
          Container(
            width: 7,
            child: Container(
              color: Colors.green[400],
            ),
          )
        ],
      ),
    );
  }

  Widget otherBloc() {
    return Container(
      color: Colors.grey[200],
      padding: EdgeInsets.all(30),
      child: Row(
        children: [
          Icon(
            Icons.home,
            size: 40,
          ),
          SizedBox(
            width: 15,
          ),
          Expanded(
            child: Text(
              'Compra mais recente em Estabelecimento XPTO em Novo Hamburgo',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ),
          Icon(Icons.keyboard_arrow_right),
        ],
      ),
    );
  }
}
