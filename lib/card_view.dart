import 'package:business_card/colors.dart';
import 'package:business_card/infoview.dart';
import 'package:flutter/material.dart';

class CardView extends StatefulWidget {
  const CardView({super.key});

  @override
  State<CardView> createState() => _CardViewState();
}

class _CardViewState extends State<CardView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: greenSea,
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 80,
            backgroundColor: Colors.white,
            child: Padding(
                padding: const EdgeInsets.all(5), // Border radius
                child: ClipOval(child: Image.asset("images/AvatarMaker.png"))),
          ),
          const Text(
            "Yann DIPITA",
            style:
                TextStyle(color: Colors.white, fontFamily: "Pacifico-Regular"),
          ),
          const Text(
            "Mobile Developper",
            style: TextStyle(color: Colors.white),
          ),
          const Divider(),
          const InfoView(icon: Icons.phone, text: "07.49.79.64.81"),
          const SizedBox(
            height: 10,
          ),
          const InfoView(icon: Icons.mail, text: "dipitay@gmail.com")
        ],
      )),
    );
  }
}
