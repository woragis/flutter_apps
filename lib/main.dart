// ignore_for_file: use_key_in_widget_constructors, empty_constructor_bodies

import 'package:flutter/material.dart';
import "quote.dart";
import "quote_card.dart";

// Static Variables
const nameLabel = "NAME";

void main() {
  runApp(const MaterialApp(home: QuoteList()));
}

class QuoteList extends StatefulWidget {
  const QuoteList({Key? key}) : super(key: key);

  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Quote> quotes = [
    Quote(
        text: "Be yourself, everybody else is already taken",
        author: "Napoleon"),
    Quote(
        text: "I have nothing to declare except my genius",
        author: "Maquiavel"),
    Quote(
        text: "The truth is rarely pure and never simple",
        author: "Marco Aurelio")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: const Text("Awesome Quotes"),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: quotes
            .map((quote) => QuoteCard(
                quote: quote,
                delete: () {
                  setState(() {
                    quotes.remove(quote);
                  });
                }))
            .toList(),
      ),
    );
  }
}
