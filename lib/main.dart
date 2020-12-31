import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';

void main() => runApp(MaterialApp(
      home: Quotelist(),
    ));

class Quotelist extends StatefulWidget {
  @override
  _QuotelistState createState() => _QuotelistState();
}

class _QuotelistState extends State<Quotelist> {
  List<Quote> quotes = [
    Quote(author: 'Oscar', text: 'Be yourself'),
    Quote(author: 'Oscar', text: 'I have a dream'),
    Quote(author: 'Oscar', text: 'I know the truth')
  ];
  Widget quoteTemplate(quote) {
    return QuoteCard(quote: quote);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Awesome QUote'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: quotes
            .map((quote) => QuoteCard(
                  quote: quote,
                  delete: () {
                    setState(() {
                      quotes.remove(quote);
                    });
                  },
                ))
            .toList(),
      ),
    );
  }
}
