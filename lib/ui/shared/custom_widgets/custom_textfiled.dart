import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  final IconData ? sufIcon;
  final Color? prefIcon;
  final String? hintText;
  const CustomTextField({super.key, this.sufIcon, this.prefIcon, this.hintText});

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return TextFormField(
    
      decoration: InputDecoration(
     border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)) ,
        prefixIcon:   widget.sufIcon != null
              ? Icon(
                 widget. sufIcon,
                  color:widget.prefIcon,
                )
              : SizedBox(),
              hintText: widget.hintText,
             
      ),
    ) ;
  }
}