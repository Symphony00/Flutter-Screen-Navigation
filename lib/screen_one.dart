import 'package:flutter/material.dart';
import 'package:screennavigation/screen_two.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(children: [
          const Padding(padding: EdgeInsets.all(0)),
          const UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://pps.whatsapp.net/v/t61.24694-24/288521176_759130315514459_2545275807823807767_n.jpg?ccb=11-4&oh=01_AdT1QizYhPHESiiLeCwu8IIO75U53xz1W0SWf6HlpjRxTQ&oe=64017012"),
              ),
              accountName: Text("Abdul Rafey"),
              accountEmail: Text("lights.of.life11@gmail.com")),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text("Page 2"),
            onTap: () => {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const ScreenTwo()))
            },
          )
        ]),
      ),
      appBar: AppBar(
        title: const Center(child: Text("Home Screen")),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
              child: TextButton(
                  onPressed: () => {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ScreenTwo()))
                      },
                  child: const Text(
                    "Go to Screen two",
                    style: TextStyle(fontSize: 20),
                  )))
        ],
      ),
    );
  }
}
