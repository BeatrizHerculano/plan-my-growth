import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  final int maxLines;
  final String hint;
  final Map<bool Function(String), String> validations;
  const CustomTextField({Key key, this.maxLines, this.hint, this.validations})
      : super(key: key);

  @override
  CustomTextFieldState createState() => CustomTextFieldState();
}

class CustomTextFieldState extends State<CustomTextField> {
  String text;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: widget.maxLines,
      decoration: InputDecoration(hintText: widget.hint),
      validator: (formFieldText) {
        String message;
        widget.validations.forEach((key, validationMessage) {
          var result = key.call(formFieldText);
          if (result) {
            message = validationMessage;
          }
        });
        text = formFieldText;
        return message;
      },
    );
  }
}
