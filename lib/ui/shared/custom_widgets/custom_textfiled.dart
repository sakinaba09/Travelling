import 'package:flutter/material.dart';
import 'package:traveling/ui/shared/colors.dart';
import 'package:traveling/ui/shared/utils.dart';

class CustomTextField extends StatefulWidget {
  final IconData ? prefIcon;
  final Color? colorIcon;
  final String? hintText;
    final double? maxHeight;
  final double? maxWidth;
  const CustomTextField({super.key, this.prefIcon, this.colorIcon, this.hintText, this.maxHeight, this.maxWidth});

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        constraints: BoxConstraints(
        maxHeight:widget. maxHeight ?? screenHeight(2),
        maxWidth: widget.maxWidth ?? screenWidth(1.1),
      ),
        
        fillColor: AppColors.TextFieldcolor,
        filled: true,
 border: OutlineInputBorder(
          borderSide: BorderSide(
            
          ),
          borderRadius: BorderRadius.circular(20),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide.none,
        ),      
    
        prefixIcon:   widget.prefIcon != null
              ? Icon(
                 widget. prefIcon,
                  color:widget.colorIcon,
                )
              : SizedBox(),
              hintText: widget.hintText,
              hintStyle: TextStyle(
            color: AppColors.TextgrayColor,
            // fontSize: size.width / 18,
          ),
             
      ),
    ) ;
  }
}