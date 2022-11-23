import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../drawer.dart';

class WatchListDetailPage extends StatelessWidget {
  final String title;
  final bool watched;
  final int rating;
  final String releasedDate;
  final String review;

  const WatchListDetailPage(
      {Key? key,
      required this.title,
      required this.watched,
      required this.rating,
      required this.releasedDate,
      required this.review})
      : super(key: key);

  showWatched() {
    if (watched == true) {
      return RichText(
        text: TextSpan(
          style: const TextStyle(
            fontWeight: FontWeight.normal,
            fontSize: 15,
            color: Colors.black,
          ),
          children: <TextSpan>[
            TextSpan(
              text: "Watched: ",
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            TextSpan(
              text: "watched",
            ),
          ],
        ),
      );
    } else {
      return RichText(
        text: TextSpan(
          style: const TextStyle(
            fontWeight: FontWeight.normal,
            fontSize: 15,
            color: Colors.black,
          ),
          children: <TextSpan>[
            TextSpan(
              text: "Watched: ",
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            TextSpan(
              text: "not watched",
            ),
          ],
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail'),
      ),
      drawer: drawerWidget(context),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  color: Colors.black),
            ),
            const SizedBox(
              height: 40.0,
            ),
            RichText(
              text: TextSpan(
                style: const TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 15,
                  color: Colors.black,
                ),
                children: <TextSpan>[
                  TextSpan(
                    text: "Released Date: ",
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text: releasedDate,
                  ),
                ],
              ),
            ),
            RichText(
              text: TextSpan(
                style: const TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 15,
                  color: Colors.black,
                ),
                children: <TextSpan>[
                  TextSpan(
                    text: "Rating: ",
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text: rating.toString(),
                  ),
                  TextSpan(
                    text: "/5",
                  ),
                ],
              ),
            ),
            showWatched(),

            Text(
              "Review: ",
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),
            Text(
              review,
              style:
                  const TextStyle(fontWeight: FontWeight.normal, fontSize: 15),
            ),

            // GestureDetector(
            //   onTap: () => Navigator.pop(
            //     context,
            //   ),
            //   child: Column(
            //     mainAxisAlignment: MainAxisAlignment.start,
            //     crossAxisAlignment: CrossAxisAlignment.start,
            //     children: [
            //       Text(
            //         "Back",
            //         style: const TextStyle(
            //           fontSize: 18.0,
            //           fontWeight: FontWeight.bold,
            //           backgroundColor: Colors.blue,
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
            const Spacer(),

            Align(
              alignment: Alignment.bottomCenter,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    minimumSize: const Size.fromHeight(50),
                    backgroundColor: Colors.lightBlue),
                onPressed: () {
                  Navigator.pop(
                    context,
                  );
                },
                child: const Text(
                  "Back",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
