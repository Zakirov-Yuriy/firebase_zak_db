// Пример использования:
import 'package:flutter/material.dart';

import 'accordion_widget.dart';

class MyAccordionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Пример аккордеона'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: AccordionWidget(
          title: 'Заголовок аккордеона',
          subheading: 'текст',
          icon: const Icon(Icons.sentiment_satisfied_alt),
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text('Содержимое аккордеона 1'),
              Text('Содержимое аккордеона 2'),
              Text('Содержимое аккордеона 3'),
            ],
          ),
        ),
      ),
    );
  }
}
