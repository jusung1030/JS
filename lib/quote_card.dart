import 'package:flutter/material.dart';
import 'quote.dart';

class QuoteCard extends StatelessWidget {
  final Quote quote;
  final Function delete;
  QuoteCard({this.quote, this.delete});
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(16, 16, 16, 16),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(quote.text,
                style: TextStyle(fontSize: 18.0, color: Colors.grey)),
            SizedBox(
              height: 30,
            ),
            Text(quote.author,
                style: TextStyle(fontSize: 18.0, color: Colors.grey)),
            SizedBox(
              height: 9.0,
            ),
            FlatButton.icon(
              onPressed: delete,
              label: Text('delete'),
              icon: Icon(Icons.delete),
            ),
          ],
        ),
      ),
    );
  }
}
