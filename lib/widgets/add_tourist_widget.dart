// import 'package:flutter/material.dart';

// import '../utils/colors.dart';

// class AddTouristWidget extends StatefulWidget {
//   final String title;
//   const AddTouristWidget({Key? key, required this.title}) : super(key: key);

//   @override
//   _AddTouristWidgetState createState() => _AddTouristWidgetState();
// }

// class _AddTouristWidgetState extends State<AddTouristWidget> {
//   bool _isExpanded = false;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: const BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.all(Radius.circular(12.0)),
//       ),
//       child: Column(
//         children: [
//           Padding(
//             padding: const EdgeInsets.only(bottom: 8),
//             child: InkWell(
//               onTap: () {
//                 setState(() {
//                   _isExpanded = !_isExpanded;
//                 });
//               },
//               child: Container(
//                 color: Colors.white,
//                 child: Padding(
//                   padding: const EdgeInsets.all(16.0),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Text(
//                         widget.title,
//                         style: TextStyle(
//                           fontSize: 22,
//                           fontFamily: 'SFProDisplay',
//                           fontWeight: FontWeight.w500,
//                         ),
//                       ),
//                       Container(
//                         padding: EdgeInsets.all(2),
//                         decoration: BoxDecoration(
//                           color: AppColors.inputArrowBgColor,
//                           borderRadius: BorderRadius.circular(6),
//                         ),
//                         child: Icon(
//                           _isExpanded ? Icons.add : Icons.add,
//                           color: AppColors.blueColor,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//           ),
//           if (_isExpanded)
//             Padding(
//               padding: EdgeInsets.only(right: 16, left: 16, top: 16),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   SizedBox(height: 16),
//                 ],
//               ),
//             ),
//         ],
//       ),
//     );
//   }
// }

import 'package:firebase_zak_db/widgets/tourist_wudget.dart';
import 'package:flutter/material.dart';

import '../utils/colors.dart';

class AddTouristWidget extends StatefulWidget {
  final String title;
  const AddTouristWidget({Key? key, required this.title}) : super(key: key);

  @override
  _AddTouristWidgetState createState() => _AddTouristWidgetState();
}

class _AddTouristWidgetState extends State<AddTouristWidget> {
  bool _isExpanded = false;
  List<TouristtWidget> tourists = [];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(12.0)),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: InkWell(
              onTap: () {
                setState(() {
                  _isExpanded = !_isExpanded;
                  if (_isExpanded) {
                    tourists.add(
                        TouristtWidget(title: 'Турист ${tourists.length + 3}'));
                  }
                });
              },
              child: Container(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        widget.title,
                        style: TextStyle(
                          fontSize: 22,
                          fontFamily: 'SFProDisplay',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(2),
                        decoration: BoxDecoration(
                          color: AppColors.blueColor,
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: Icon(
                          _isExpanded ? Icons.add : Icons.add,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          if (_isExpanded)
            Padding(
              padding: EdgeInsets.only(right: 16, left: 16, top: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  for (var tourist in tourists) tourist,
                ],
              ),
            ),
        ],
      ),
    );
  }
}
