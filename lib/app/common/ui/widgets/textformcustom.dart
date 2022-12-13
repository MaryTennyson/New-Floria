import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextForm extends StatefulWidget {
  final String labeltext;
  final TextInputType textinputtype;
  final TextInputAction textinputtaction;
  final TextEditingController controller;

  const CustomTextForm({
    Key? key,
    required this.labeltext,
    required this.textinputtype,
    required this.textinputtaction,
    required this.controller,
  }) : super(key: key);

  @override
  State<CustomTextForm> createState() => _CustomTextFormState();
}

class _CustomTextFormState extends State<CustomTextForm> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.w),
      child: TextFormField(
        cursorColor: Theme.of(context).colorScheme.secondary,
        controller: widget.controller,
        textInputAction: widget.textinputtaction,
        keyboardType: widget.textinputtype,
        maxLines: null,
        decoration: InputDecoration(
          label: Text(widget.labeltext),
        ),
      ),
    );
  }
}
