import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:counter_7/model/watchlist.dart';
import 'package:counter_7/drawer.dart';
import 'package:counter_7/page/watchlist_detail.dart';
import 'package:counter_7/function/fetch_watchlist.dart';

class MyWatchlistPage extends StatefulWidget {
  const MyWatchlistPage({Key? key}) : super(key: key);

  @override
  _WatchlistPageState createState() => _WatchlistPageState();
}

class _WatchlistPageState extends State<MyWatchlistPage> {
  // Future<List<Watchlist>> fetchWatchlist() async {
  //   var url =
  //       Uri.parse('https://tugas2-pbp-maureen.herokuapp.com/mywatchlist/json/');
  //   var response = await http.get(
  //     url,
  //     headers: {
  //       "Access-Control-Allow-Origin": "*",
  //       "Content-Type": "application/json",
  //     },
  //   );

  //   // melakukan decode response menjadi bentuk json
  //   var data = jsonDecode(utf8.decode(response.bodyBytes));

  //   // melakukan konversi data json menjadi object ToDo
  //   List<Watchlist> listWatchlist = [];
  //   for (var d in data) {
  //     if (d != null) {
  //       listWatchlist.add(Watchlist.fromJson(d));
  //     }
  //   }

  //   return listWatchlist;
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('My Watch List'),
        ),
        drawer: drawerWidget(context),
        body: FutureBuilder(
            future: fetchWatchlist(),
            builder: (context, AsyncSnapshot snapshot) {
              if (snapshot.data == null) {
                return const Center(child: CircularProgressIndicator());
              } else {
                if (!snapshot.hasData) {
                  return Column(
                    children: const [
                      Text(
                        "Tidak ada watch list :(",
                        style:
                            TextStyle(color: Color(0xff59A5D8), fontSize: 20),
                      ),
                      SizedBox(height: 8),
                    ],
                  );
                } else {
                  return ListView.builder(
                    itemCount: snapshot.data!.length,
                    itemBuilder: (_, index) => Container(
                      margin: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 12),
                      padding: const EdgeInsets.all(20.0),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15.0),
                          border: Border.all(
                            color: snapshot.data![index].fields.watched
                                ? Color.fromARGB(255, 76, 188, 165)
                                : Color.fromARGB(255, 197, 57, 169),
                            width: 3,
                          ),
                          boxShadow: const [
                            BoxShadow(color: Colors.black, blurRadius: 2.0)
                          ]),
                      // child: Card(
                      //   shape: RoundedRectangleBorder(
                      //     borderRadius:
                      //         BorderRadius.circular(10), // if you need this
                      //     side: BorderSide(
                      //       color: snapshot.data![index].fields.watched
                      //           ? Color.fromARGB(255, 76, 188, 165)
                      //           : Color.fromARGB(255, 197, 57, 169),
                      //       width: 2,
                      //     ),
                      //   ),
                      child: GestureDetector(
                        onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => WatchListDetailPage(
                              title: snapshot.data![index].fields.title,
                              watched: snapshot.data![index].fields.watched,
                              rating: snapshot.data![index].fields.rating,
                              releasedDate: snapshot
                                  .data![index].fields.releaseDate
                                  .toString(),
                              review: snapshot.data![index].fields.review,
                            ),
                          ),
                        ),
                        // child: Card(
                        //   shape: RoundedRectangleBorder(
                        //     borderRadius:
                        //         BorderRadius.circular(10), // if you need this
                        //     side: BorderSide(
                        //       color: snapshot.data![index].fields.watched
                        //           ? Color.fromARGB(255, 76, 188, 165)
                        //           : Color.fromARGB(255, 197, 57, 169),
                        //       width: 2,
                        //     ),
                        //   ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "${snapshot.data![index].fields.title}",
                              style: const TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 10),
                            Text("${snapshot.data![index].fields.watched}"),
                            Checkbox(
                              value: snapshot.data![index].fields.watched,
                              onChanged: (bool? newValue) {
                                setState(() {
                                  snapshot.data![index].fields.watched =
                                      !snapshot.data![index].fields.watched;
                                });
                              },
                            ),
                          ],
                        ),
                      ),
                      // ),
                    ),
                  );
                }
              }
            }));
  }
}
