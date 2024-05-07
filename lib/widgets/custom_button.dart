import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Function onpressed;
  final Color textcolor;
  final Color bordercolor;
  final Color buttoncolor;
  final double borderradius;
  final double fontsize;
  final double? width;
  final double? height;

  const CustomButton({
    super.key,
    required this.text,
    required this.onpressed,
    this.textcolor = Colors.black,
    this.fontsize = 16,
    this.bordercolor = Colors.black,
    this.buttoncolor = Colors.pink,
    this.borderradius = 7,
    this.height,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          onpressed();
        },
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(buttoncolor),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
              side: BorderSide(color: bordercolor ?? Colors.pink),
            ),
          ),
        ),
        child: Text(text));
  }
}  


/* import 'package:flutter/material.dart';
import 'package:wikolo/common/theme/colors.dart';
import 'package:wikolo/common/widgets/text_view_widget.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color? buttonColor;
  final Color? borderColor; // Add borderColor property
  final Color textColor;
  final double borderRadius;
  final double? width;
  final double? height;
  final double? letterSpacing;
  final EdgeInsets margin;
  final bool loading;
  final double fontSize;

  const CustomButton({
    super.key,
    required this.text,
    this.fontSize = 16,
    this.loading = false,
    required this.onPressed,
    this.margin = EdgeInsets.zero,
    this.borderRadius = 7,
    this.buttonColor = ThemeColors.primaryColor,
    this.borderColor,
    this.textColor = ThemeColors.white,
    this.width,
    this.height,
    this.letterSpacing,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      width: width,
      height: height,
      child: ElevatedButton(
        onPressed: () {
          onPressed();
          FocusScope.of(context).unfocus();
        },
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(buttonColor),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(borderRadius),
              side: BorderSide(
                color: borderColor ?? Colors.pink, // Use borderColor if provided, else use pink
              ),
            ),
          ),
        ),
        child: loading
            ? const SizedBox(
                height: 20,
                width: 20,
                child: CircularProgressIndicator(
                  color: Colors.white,
                  strokeWidth: 2,
                ),
              )
            : TextViewWidget(
                text: text,
                textColor: textColor,
                fontSize: fontSize,
                letterSpacing: letterSpacing,
                fontWeight: FontWeight.w600,
              ),
                   ),
    );
  }
}
 */