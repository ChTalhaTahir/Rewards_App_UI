import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  final double height;
  final double width;
  final TextEditingController? textEditingController;
  final TextInputType? keyboardType;
  final TextInputAction textInputAction;
  final String? label;
  final String? hintText;
  final String? Function(String?)? fieldValidator;
  const InputField(
      {Key? key,
      required this.height,
      required this.width,
      this.textEditingController,
      this.keyboardType = TextInputType.text,
      this.textInputAction = TextInputAction.next,
      this.label,
      this.hintText, this.fieldValidator})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height * 0.07,
      width: width * 0.88,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: const Color.fromRGBO(245, 245, 245, 1)),
      child: TextFormField(
        decoration: InputDecoration(
            floatingLabelBehavior: FloatingLabelBehavior.never,
            focusedBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.blue),
            ),
            
            enabledBorder: InputBorder.none,
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 10.0, vertical: 15.0),
            errorBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.red),
            ),
            labelText: '$label',
            hintText: '$hintText'),
            validator: fieldValidator,
        controller: textEditingController,
        keyboardType: keyboardType,
        textInputAction: textInputAction,
      ),
    );
  }
}
