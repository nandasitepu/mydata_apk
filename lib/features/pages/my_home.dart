import 'package:flutter/material.dart';
import 'package:mydata_apk/core/components/my_square.dart';

// import 'package:shared_preferences/shared_preferences.dart';

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  String token = '';

  @override
  void initState() {
    super.initState();
    // getCred();
  }

  // Credential
  // void getCred() async {
  //   SharedPreferences pref = await SharedPreferences.getInstance();
  //   setState(() {
  //     token = pref.getString("login")!;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.account_circle_outlined,
            ),
          )
        ],
        title: const Center(
          child: Text(
            "H . O .  M .  E",
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.black,
      ),
      drawer: Drawer(
        child: Container(
          color: Colors.black,
          child: ListView(
            children: const [
              DrawerHeader(
                child: Text("Home"),
              )
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 10),
        child: Column(
          children: [
            const Align(
              alignment: Alignment.centerRight,
              child: Text(
                "M Y D A T A",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
            ),

            const SizedBox(height: 20),
            // Menu
            SizedBox(
              height: 100,
              child: Expanded(
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    MySquare(),
                    MySquare(),
                    MySquare(),
                    MySquare(),
                  ],
                ),
              ),
            ),

            const Divider(
              thickness: 5,
              color: Colors.grey,
            ),
            Expanded(
              flex: 5,
              child: ListView(
                children: [
                  Container(
                    height: 500,
                    color: Colors.deepPurple,
                    child: const Expanded(
                      child: ListTile(
                        leading: Text("Hello"),
                        title: Text("Berita 01"),
                        subtitle: Text(
                            "In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available. "),
                        trailing: Text("Goodbye"),
                      ),
                    ),
                  ),
                  Container(
                    height: 100,
                    color: Colors.yellow,
                  ),
                  Container(
                    height: 100,
                    color: Colors.green,
                  ),
                ],
              ),
            ),
            //
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
