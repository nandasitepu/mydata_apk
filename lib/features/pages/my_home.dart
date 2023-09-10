import 'package:flutter/material.dart';

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
            // Text("Token =  $token"),
            const Align(
              alignment: Alignment.centerRight,
              child: Text(
                "M Y D A T A",
                style: TextStyle(fontSize: 12),
              ),
            ),

            const SizedBox(height: 20),
            // Income and Expense
            const Row(
              children: [
                Card(
                  color: Colors.green,
                  elevation: 20,
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      "Income",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                Card(
                  color: Colors.redAccent,
                  elevation: 20,
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      "Expense",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),

            // MyData Container | Hukum | Pendidikan | Kesehatan
            const Row(),
            // News Container
            const ListTile(),

            OutlinedButton(
                onPressed: () {
                  Navigator.popAndPushNamed(context, "/loginpage");
                },
                child: const Text("Login Page"))
          ],
        ),
      ),
    );
  }
}
