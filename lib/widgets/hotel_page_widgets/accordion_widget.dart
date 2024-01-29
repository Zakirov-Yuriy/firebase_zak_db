import 'package:flutter/material.dart';
import 'package:firebase_zak_db/utils/colors.dart';

class AccordionWidget extends StatefulWidget {
  final String title;
  final String subheading;
  final Widget child;
  final Widget icon;

  AccordionWidget({
    required this.title,
    required this.child,
    required this.subheading,
    required this.icon,
  });

  @override
  _AccordionWidgetState createState() => _AccordionWidgetState();
}

class _AccordionWidgetState extends State<AccordionWidget> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        GestureDetector(
          onTap: () {
            setState(() {
              _isExpanded = !_isExpanded;
            });
          },
          child: Padding(
            padding: const EdgeInsets.only(right: 16.0, left: 16.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: AppColors.lightGrayColor,
              ),
              padding:
                  EdgeInsets.only(left: 15, right: 15, top: 15, bottom: 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  widget.icon,
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            widget.title,
                            style: TextStyle(
                              fontSize: 16,
                              fontFamily: 'SFProDisplay',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            widget.subheading,
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey,
                              fontFamily: 'SFProDisplay',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Divider()
                        ],
                      ),
                    ),
                  ),
                  Icon(
                    _isExpanded
                        ? Icons.keyboard_arrow_down
                        : Icons
                            .keyboard_arrow_right, // Change the icon based on the state
                  ),
                ],
              ),
            ),
          ),
        ),
        if (_isExpanded)
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: widget.child,
          ),
      ],
    );
  }
}

// Example usage:
class MyAccordionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Accordion Example'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: AccordionWidget(
          title: 'Accordion Title',
          subheading: 'text',
          icon: Icon(Icons.sentiment_satisfied_alt),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text('Accordion Content 1'),
              Text('Accordion Content 2'),
              Text('Accordion Content 3'),
            ],
          ),
        ),
      ),
    );
  }
}
