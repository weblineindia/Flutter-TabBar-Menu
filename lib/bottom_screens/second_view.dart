import 'package:flutter/material.dart';

class SecondView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            'assets/logo.png',
            height: MediaQuery.of(context).size.height * 0.20,
            width: 350.0,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.15,
            width: 50,
          ),
          const Text('Welcome',
              style: TextStyle(
                fontSize: 33,
                fontWeight: FontWeight.w900,
              )),
          const Text('To',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              )),
          const Text('Second View',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ))
        ],
      ),
    );
  }
}
