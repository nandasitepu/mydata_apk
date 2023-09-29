import 'package:flutter/material.dart';
import 'package:mydata_apk/core/components/my_card_list.dart';
import 'package:mydata_apk/features/controllers/peraturan/peraturan_ctrl.dart';

class MyList extends StatelessWidget {
  const MyList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: DefaultTabController(
        length: 6,
        child: Column(
          children: [
            TabBar(
              indicatorSize: TabBarIndicatorSize.label,
              labelColor: Colors.black,
              isScrollable: true,
              tabs: [
                Tab(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      border: Border.all(width: 1, color: Colors.black),
                    ),
                    padding: const EdgeInsets.all(5),
                    child: const Text("UU"),
                  ),
                ),
                Tab(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      border: Border.all(width: 1, color: Colors.black),
                    ),
                    padding: const EdgeInsets.all(5),
                    child: const Text("PP"),
                  ),
                ),
                Tab(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      border: Border.all(width: 1, color: Colors.black),
                    ),
                    padding: const EdgeInsets.all(5),
                    child: const Text("Perpres"),
                  ),
                ),
                Tab(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      border: Border.all(width: 1, color: Colors.black),
                    ),
                    padding: const EdgeInsets.all(5),
                    child: const Text("Permen"),
                  ),
                ),
                Tab(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      border: Border.all(width: 1, color: Colors.black),
                    ),
                    padding: const EdgeInsets.all(5),
                    child: const Text("Pergub"),
                  ),
                ),
                Tab(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      border: Border.all(width: 1, color: Colors.black),
                    ),
                    padding: const EdgeInsets.all(5),
                    child: const Text("Perbup"),
                  ),
                ),
              ],
            ),
            const Divider(
              thickness: 1,
              color: Colors.blue,
            ),
            Expanded(
              child: TabBarView(children: [
                // Refresh Button

                // UU View
                FutureBuilder(
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
                                  itemBuilder:
                                      (BuildContext context, int index) {
                                    return MyCardList(
                                      id: peraturan[index].id,
                                      nomor: peraturan[index].nomor,
                                      uraian: peraturan[index].uraian,
                                      link: peraturan[index].link,
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

                const Center(
                  child: Text("Two"),
                ),
                const Center(
                  child: Text("Three"),
                ),
                const Center(
                  child: Text("Four"),
                ),
                const Center(
                  child: Text("Five"),
                ),
                const Center(
                  child: Text("Six"),
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
