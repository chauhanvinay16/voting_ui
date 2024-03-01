import 'package:flutter/material.dart';

void main() {
  runApp(VotingApp());
}

class VotingApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Voting App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: VotingScreen(),
    );
  }
}

class VotingScreen extends StatefulWidget {
  @override
  _VotingScreenState createState() => _VotingScreenState();
}

class _VotingScreenState extends State<VotingScreen> {
  int _yesVotes = 0;
  int _noVotes = 0;

  void _voteYes() {
    setState(() {
      _yesVotes++;
    });
  }

  void _voteNo() {
    setState(() {
      _noVotes++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Vote Now'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Do you agree with this statement?',
              style: TextStyle(fontSize: 20.0),
            ),
            SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                ElevatedButton(onPressed: _voteYes, child: Text("YES")),
                ElevatedButton(onPressed: _voteNo, child: Text("NO"))
              ],
            ),
            SizedBox(height: 20.0),
            Text(
              'Yes Votes: $_yesVotes',
              style: TextStyle(fontSize: 18.0),
            ),
            SizedBox(height: 10.0),
            Text(
              'No Votes: $_noVotes',
              style: TextStyle(fontSize: 18.0),
            ),
          ],
        ),
      ),
    );
  }
}
