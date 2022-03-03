import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'covid_model.dart';

void main() {
  const app = MyApp();
  runApp(app);
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // callback method

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'The Cat',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
        scaffoldBackgroundColor: Colors.deepOrange[100],
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        textTheme: TextTheme(
          headline1: TextStyle(
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
          ),
          headline6: TextStyle(
            fontSize: 22.0,
            //fontWeight: FontWeight.bold,
          ),
          bodyText2: TextStyle(
            fontSize: 14.0,
          ),
        ),
      ),
      home: Test(),
    );
  }
}

class Test extends StatelessWidget {
  Test({Key? key}) : super(key: key);

  final List<CovidModel> covidReportList = [
    CovidModel(
        date: 'Mcn Keya',
        mentter: 'clea',
        caption: 'sayhi my world',
        comment: '   hi',
        avatar: 'c1.png',
        feed: 'c1.png'),
    CovidModel(
        date: 'june',
        mentter: 'my cat',
        caption: 'สวัสดีปีใหม่',
        comment: '    Happy New Year',
        avatar: 'c2.png',
        feed: 'c2.png'),
    CovidModel(
        date: 'mintty',
        mentter: 'bakabaka',
        caption: ':)',
        comment: '    Mylove',
        avatar: 'c3.png',
        feed: 'c3.png'),
    CovidModel(
        date: 'black_w',
        mentter: 'bilili',
        caption: 'cute!',
        comment: '    yes!',
        avatar: 'c4.png',
        feed: 'c4.png'),
    CovidModel(
        date: 'moder_y',
        mentter: 'mith_w',
        caption: 'new day!',
        comment: '    hiii',
        avatar: 'c5.png',
        feed: 'c5.png'),
    CovidModel(
        date: 'pepsi',
        mentter: 'leo',
        caption: 'mommyy',
        comment: '    brooo',
        avatar: 'c6.png',
        feed: 'c6.png'),
  ];

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    print('ความกว้างจอ: $screenWidth');

    return Scaffold(
      appBar: AppBar(title: Text('THE CATS')),
      body: ListView.builder(
          padding: EdgeInsets.symmetric(
            horizontal: screenWidth > 600 ? (screenWidth - 650) / 2 : 8.0,
            vertical: screenWidth > 600 ? 16.0 : 8.0,
          ),
          itemCount: covidReportList.length,
          itemBuilder: (context, index) =>
              MyCard(covid: covidReportList[index])),
    );
  }
}

class MyCard extends StatelessWidget {
  final CovidModel covid;

  const MyCard({
    Key? key,
    required this.covid,
  }) : super(key: key);
  final bool _liked = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5.0,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 8, 8, 16),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundImage:
                        AssetImage('assets/images/${covid.avatar}'),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Text(covid.date),
                  Expanded(
                      child: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.more_vert),
                    alignment: Alignment.topRight,
                  )),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(child: Image.asset('assets/images/${covid.feed}'))
              ],
            ),
            Container(
              height: 20.0,
            ),
            Row(
              children: [Expanded(child: Text(covid.caption))],
            ),
            Container(
              height: 20.0,
            ),
            Column(
              children: [
                Row(
                  children: [
                    Text(
                      covid.mentter,
                      style: TextStyle(
                        color: Colors.deepOrange,
                      ),
                    ),
                    Text(covid.comment),
                  ],
                ),
              ],
            ),
            Column(
              children: [
                Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: _liked
                          ? const Icon(
                              Icons.favorite,
                              color: Colors.deepOrange,
                            )
                          : const Icon(
                              Icons.favorite_outline,
                            ),
                    ),
                    Expanded(
                      child: Container(
                        height: 30.0,
                        child: TextField(
                          decoration: InputDecoration(hintText: 'Add comment'),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
