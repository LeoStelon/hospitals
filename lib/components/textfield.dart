import 'package:flutter/material.dart';

class TextFieldComponent extends StatelessWidget {
  final TextEditingController textEditingController;
  final String title;
  TextFieldComponent({
    @required this.title,
    this.textEditingController,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              color: Color(0xff6f7e95),
              fontSize: 18,
            ),
          ),
          SizedBox(height: 8),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(
                color: Color(0xff6f7e95),
              ),
            ),
            child: TextField(
              controller: textEditingController,
              style: TextStyle(
                fontSize: 18,
                letterSpacing: 1.5,
                color: Color(0xff6f7e95),
              ),
              decoration: InputDecoration(
                border: InputBorder.none,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
