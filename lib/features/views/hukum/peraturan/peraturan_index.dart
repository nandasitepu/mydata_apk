import 'package:flutter/material.dart';
import 'package:mydata_apk/core/components/my_card_list2.dart';
import 'package:mydata_apk/core/components/layouts/my_drawer.dart';
import 'package:mydata_apk/features/controllers/hukum/peraturan_ctrl.dart';

class PeraturanIndex extends StatefulWidget {
  final String name;
  const PeraturanIndex({super.key, required this.name});

  @override
  State<PeraturanIndex> createState() => _PeraturanIndexState();
}

class _PeraturanIndexState extends State<PeraturanIndex> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(widget.name),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Expanded(
              child: FutureBuilder(
                  future: getPeraturan(),
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.done) {
                      return Column(
                        children: [
                          Expanded(
                            child: ListView.separated(
                                separatorBuilder:
                                    (BuildContext context, int index) {
                                  return const Divider(
                                    height: 10,
                                    thickness: 1,
                                    color: Colors.blue,
                                  );
                                },
                                reverse: false,
                                itemCount: peraturan.length,
                                itemBuilder: (BuildContext context, int index) {
                                  return MyCardList2(
                                    id: peraturan[index].id,
                                    nomor: peraturan[index].nomor,
                                    uraian: peraturan[index].uraian,
                                    link: "PDF",
                                    onPressed: () {},
                                  );
                                }),
                          ),
                        ],
                      );
                    } else {
                      return const Center(
                        child: Center(
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.all(30.0),
                                child: CircularProgressIndicator(),
                              ),
                              SizedBox(height: 40),
                              Expanded(child: Text("Loading Data")),
                            ],
                          ),
                        ),
                      );
                    }
                  }),
            ),
          ],
        ),
      ),
      drawer: const MyDrawer(),
    );
  }
}
