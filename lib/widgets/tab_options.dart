import 'package:flutter/material.dart';

class TabOptions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (ctx, index) {
          return Row(
            children: [
              Container(
                width: 100,
                color: Color.fromRGBO(255, 255, 255, .2),
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.person_add,
                      color: Colors.white,
                      size: 30,
                    ),
                    Spacer(),
                    Text(
                      'Indicar amigos',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: index == 9 ? 20 : 5,
              )
            ],
          );
        },
      ),
    );
  }
}
