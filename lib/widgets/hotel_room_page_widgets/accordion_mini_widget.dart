import 'package:flutter/material.dart';
import 'package:firebase_zak_db/utils/colors.dart';

class AccordionMiniWidget extends StatefulWidget {
  final String title;

  final Widget child;

  AccordionMiniWidget({
    required this.title,
    required this.child,
  });

  @override
  _AccordionMiniWidgetState createState() => _AccordionMiniWidgetState();
}

class _AccordionMiniWidgetState extends State<AccordionMiniWidget> {
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
            padding: const EdgeInsets.only(top: 8.0, bottom: 16),
            child: Container(
              width: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: AppColors.lightBlueColor,
              ),
              padding: EdgeInsets.only(left: 10, top: 5, bottom: 5),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            widget.title,
                            style: TextStyle(
                              fontSize: 14,
                              color: AppColors.blueColor,
                              fontFamily: 'SFProDisplay',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Icon(
                    _isExpanded
                        ? Icons.keyboard_arrow_down
                        : Icons
                            .keyboard_arrow_right, // Change the icon based on the state
                    color: AppColors.blueColor,
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
        child: AccordionMiniWidget(
          title: 'Accordion Title',
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
