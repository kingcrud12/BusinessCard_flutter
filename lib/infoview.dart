import 'package:flutter/material.dart';

class InfoView extends StatelessWidget {
  final IconData icon;
  final String text;

  const InfoView({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(10),
        child: Container(
          height: 50,
          //margin: EdgeInsets.only(left: 50, right: 50),
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(25.0))),
          child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(icon, color: Colors.green, size: 12),
                SizedBox(
                  width: 10,
                ),
                Text(
                  text,
                  style: TextStyle(color: Colors.black, fontSize: 12),
                  textAlign: TextAlign.center,
                ),
              ]),
        ));
  }
}
