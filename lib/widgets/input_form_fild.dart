import 'package:flutter/material.dart';

import '../constants.dart';
import 'my_text.dart';



class InputFormField extends StatefulWidget {
  const InputFormField({
    Key? key,
    this.hintText,
    this.onChanged,
    this.validator,
    this.borderColor,
    this.labelText,
    this.secure = false,
    this.verticalMargin = 0,
    this.horizontalMargin = 0,
    this.keyboardType,
    this.prefixText,
  }) : super(key: key);

  final String? hintText;
  final String? labelText;
  final String? prefixText;
  final void Function(String)? onChanged;
  final String? Function(String?)? validator;
  final Color? borderColor;
  final bool secure;
  final double verticalMargin;
  final double horizontalMargin;
  final TextInputType? keyboardType;

  @override
  State<InputFormField> createState() => _InputFormFieldState();
}

class _InputFormFieldState extends State<InputFormField> {

  late bool secure;

  @override
  void initState() {
    secure = widget.secure;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: widget.verticalMargin,
        horizontal: widget.horizontalMargin,
      ),
      child: TextFormField(
        cursorColor: kPrimaryColor,
        obscureText: secure,
        keyboardType: widget.keyboardType,
        decoration: InputDecoration(
          prefixText: widget.prefixText,
          label: MyText(
            data: widget.labelText ?? '',
            color: kDarkGrayColor.withOpacity(.5),
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
          hintText: widget.hintText,
          suffixIcon: !widget.secure ? const SizedBox() : IconButton(
            icon: Icon(
              Icons.remove_red_eye,
              color: secure ? kDarkGrayColor : kGrayColor.withOpacity(0.5),
            ),
            onPressed: () {
              secure = !secure;
              setState(() {});
            },
          ),
          enabledBorder: _getBorder(kGrayColor.withOpacity(.5)),
          focusedBorder: _getBorder(kGrayColor.withOpacity(.5)),
          errorBorder: _getBorder(Colors.red),
          focusedErrorBorder: _getBorder(Colors.red.shade900),
          border:  _getBorder(kGrayColor.withOpacity(.5)),
        ),
        onChanged: widget.onChanged,
        validator: widget.validator,
      ),
    );
  }

  InputBorder _getBorder(Color color) {
    return OutlineInputBorder(
      borderSide: BorderSide(
        color: color,
      ),
    );
  }
}