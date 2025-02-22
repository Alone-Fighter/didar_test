
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get_rx/src/rx_typedefs/rx_typedefs.dart';
import 'package:didar_test/config/res/colors.dart';
import 'package:didar_test/config/res/dimensions.dart';

import '../../../config/styles.dart';


class CustomButton extends StatefulWidget {
  CustomButton(
      {Key? key,
        required this.text,
        required this.callBack,
        required this.height,
        required this.width,
        required this.colorText,
        required this.backColor,
        this.hasBorder,
        required this.hasRow,
        this.widget,
        this.isLoading,
        this.hasGradiant})
      : super(key: key);

  final String text;

  final Callback callBack;

  final Color backColor;
  final Color colorText;
  final double height;
  final double width;
  final bool? isLoading ;
  bool? hasBorder;

  final bool hasRow;
  bool? hasGradiant;
  Widget? widget;

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.callBack,
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(Dimensions.borderRadiusComponents),
          color: widget.hasGradiant ?? false ? null : widget.backColor,
          border: widget.hasBorder ?? false
              ? Border.all(color: Colors.white, width: 1)
              : null,
          gradient: widget.hasGradiant ?? false
              ? const LinearGradient(
            colors: [
              ColorsApp.primary,
              ColorsApp.primaryLight,
            ],
            begin: Alignment(-0.8, 1),
            end: Alignment(0.9, 1),
          )
              : null,
        ),
        height: widget.height,
        width: widget.width,
        child: widget.hasRow
            ? widget.widget
            : widget.isLoading ?? false ? const SpinKitWave(color: Colors.white,size: 25) : Text(
          widget.text,
          style: txt.txtBold.txtLg.copyWith(
            color: widget.colorText,
          ),
        ),
      ),
    );
  }
}
