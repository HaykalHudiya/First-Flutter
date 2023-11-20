import 'package:flutter/material.dart';
import 'package:flutter_application_1/detail_page.dart';
import 'package:flutter_application_1/player.dart';

class HomePage extends StatelessWidget {
  List<Player> listAgent = Player.dummyData;
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Color.fromARGB(255, 255, 70, 85),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.list_alt),
                Text(
                  'Agents List',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: listAgent.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (contex) =>
                                DetailPage(agent: listAgent[index]),
                          ),
                        );
                      },
                      child: Container(
                        margin: const EdgeInsets.all(10),
                        height: 100,
                        padding: const EdgeInsets.all(10),
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromARGB(255, 188, 188, 188),
                              offset: Offset(1, 2),
                              blurRadius: 6,
                            ),
                          ],
                        ),
                        child: Row(
                          children: [
                            ClipRect(
                              child: Image(
                                image: AssetImage(
                                    "assets/${listAgent[index].gambar}"),
                                width: 85,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  listAgent[index].nama.toUpperCase(),
                                  style: const TextStyle(
                                      color: Colors.black,
                                      fontSize: 40,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(listAgent[index].role),
                                // Text(listAgent[index].biografi)
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
