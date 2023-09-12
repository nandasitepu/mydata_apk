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
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(30),
          ),
        ),
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
            const SizedBox(
              height: 100,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  MySquare(),
                  MySquare(),
                  MySquare(),
                ],
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
                    child: const ListTile(
                      leading: Text("Hello"),
                      title: Text("Berita 01"),
                      subtitle: Text("abc"),
                      trailing: Text("Goodbye"),
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
      bottomNavigationBar: SizedBox(
        height: 200,
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
          child: BottomNavigationBar(
            elevation: 1,
            backgroundColor: Colors.black,
            type: BottomNavigationBarType.fixed,
            fixedColor: Colors.white,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.cabin_outlined,
                  color: Colors.white,
                ),
                label: "Home",
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.assessment,
                  color: Colors.green,
                ),
                label: "List",
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.admin_panel_settings_outlined,
                  color: Colors.blue,
                ),
                label: "Settings",
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.favorite_border_outlined,
                  color: Colors.pink,
                ),
                label: "Bookmark",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
