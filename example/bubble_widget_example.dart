import 'package:bubble_widget/bubble_widget.dart';
import 'package:flutter/material.dart';

class BubbleWidgetExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('BubbleWidgetExample')),
      body: Center(
        child: BubbleWidget(
          padding: EdgeInsets.all(8),
          color: Theme.of(context).primaryColor,
          child: Text('I\'m a bubble'),
        ),
      ),
    );
  }
}
