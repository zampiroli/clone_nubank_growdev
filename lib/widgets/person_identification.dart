import 'package:flutter/material.dart';

class PersonIdentification extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Image.network(
          'https://logodownload.org/wp-content/uploads/2019/08/nubank-logo-3.png',
          width: 45,
          color: Colors.white,
        ),
        Padding(
          padding: EdgeInsets.only(left: 10),
          child: Text(
            'Pedro',
            style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}
