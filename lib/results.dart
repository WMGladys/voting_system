import 'package:flutter/material.dart';
import 'package:voting_system/votingPage.dart';
import 'package:voting_system/globals.dart';

class Results extends StatelessWidget {
  final List<Candidate> candidates;

  Results({required this.candidates});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Voting Results', style: TextStyle(color: Colors.blueAccent)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: candidates.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(candidates[index].name, style: TextStyle(color: Colors.white)),
              subtitle: Text('Votes: ${GlobalStorage().candidateVotes[candidates[index].name]}', style: TextStyle(color: Colors.blueAccent)),
            );
          },
        ),
      ),
    );
  }
}
