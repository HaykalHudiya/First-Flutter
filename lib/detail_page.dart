import 'package:flutter/material.dart';
import 'package:flutter_application_1/player.dart';

class DetailPage extends StatelessWidget {
  final Player agent;
  const DetailPage({super.key, required this.agent});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Aplication Agent List"),
          backgroundColor: Color.fromARGB(255, 255, 70, 85),
        ),
        body: Container(
          color: Color.fromARGB(255, 15, 25, 35),
          padding: const EdgeInsets.all(20),
          child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            textTitle(agent.nama, Color.fromARGB(255, 255, 70, 85)),
            const SizedBox(height: 15),
            Image(image: AssetImage(agent.gambar)),
            const SizedBox(height: 10),
            const SizedBox(height: 10),
            textAttribute("Role", agent.role),
            const SizedBox(height: 10),
            textTitle('Biography', Color.fromARGB(255, 255, 70, 85)),
            const SizedBox(height: 10),
            Text(
              agent.biografi,
              style: const TextStyle(fontSize: 18, color: Colors.white),
              textAlign: TextAlign.justify,
            )
          ]),
        ),
      ),
    );
  }
}

Container textTitle(String value, Color bgColor) {
  return Container(
    padding: const EdgeInsets.all(10),
    alignment: Alignment.center,
    width: double.infinity,
    decoration: BoxDecoration(color: bgColor),
    child: Text(
      value,
      style: const TextStyle(
          fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white),
    ),
  );
}

Row textAttribute(String label, String value) {
  return Row(children: [
    SizedBox(
      width: 80,
      child: Text(
        "- $label",
        style: const TextStyle(
            fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white),
      ),
    ),
    const Text(
      ":",
      style: TextStyle(fontSize: 18, color: Colors.white),
    ),
    Text(value, style: const TextStyle(fontSize: 18, color: Colors.white)),
  ]);
}
