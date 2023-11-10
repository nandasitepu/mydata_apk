import 'package:flutter/material.dart';
import 'package:mydata_apk/core/components/utilities/my_card_list2.dart';
import 'package:mydata_apk/core/components/utilities/my_webview.dart';
import 'package:mydata_apk/features/controllers/hukum/peraturan_ctrl.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:webview_flutter/webview_flutter.dart';

class MyList extends StatefulWidget {
  const MyList({super.key});

  @override
  State<MyList> createState() => _MyListState();
}

class _MyListState extends State<MyList> {
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
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceAround,
            //   children: [
            //     ElevatedButton(
            //       onPressed: () => prevPage(),
            //       child: const Text("Prev"),
            //     ),
            //     ElevatedButton(
            //       onPressed: () => nextPage(),
            //       child: const Text("Next"),
            //     ),
            //   ],
            // ),
            // const Divider(
            //   thickness: 1,
            //   color: Colors.blue,
            // ),
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
                                itemBuilder: (BuildContext context, int index) {
                                  return MyCardList2(
                                    id: peraturan[index].id,
                                    nomor: peraturan[index].nomor,
                                    uraian: peraturan[index].uraian,
                                    onPressed: () async {
                                      // var url = Uri.parse(
                                      //   "https://docs.gooogle.com/viewer?url=${peraturan[index].link}",
                                      // );
                                      // if (!await launchUrl(url)) {
                                      //   throw Exception(
                                      //       'Could not launch $url');
                                      // }
                                    },
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
                  },
                ),

                const Center(
                  child: ElevatedButton(
                    onPressed: _launchUrl,
                    child: Text("PDF"),
                  ),
                ),
                Center(
                    child: MyWebView(
                  url: "http://www.google.com",
                  text: "MyWebView",
                )),

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

final Uri _url = Uri.parse('https://flutter.dev');

Future<void> _launchUrl() async {
  if (!await launchUrl(_url)) {
    throw Exception('Could not launch $_url');
  }
}
