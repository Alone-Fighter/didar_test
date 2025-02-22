import 'package:flutter/material.dart';
import 'package:didar_test/config/const.dart';
import 'package:toastification/toastification.dart';




extension TextStyleExtension on TextStyle {

  TextStyle get txt0 => merge(const TextStyle(fontSize: 0));
  TextStyle get txt3Xs => merge(const TextStyle(fontSize: 6));
  TextStyle get txt2Xs => merge(const TextStyle(fontSize: 9));
  TextStyle get txtXs => merge(const TextStyle(fontSize: 10));
  TextStyle get txtSm => merge(const TextStyle(fontSize: 12));
  TextStyle get txtSm2 => merge(const TextStyle(fontSize: 13));
  TextStyle get txtMd => merge(const TextStyle(fontSize: 14));
  TextStyle get txtLg => merge(const TextStyle(fontSize: 16));
  TextStyle get txtXl => merge(const TextStyle(fontSize: 18));
  TextStyle get txt1Xl => merge(const TextStyle(fontSize: 20));
  TextStyle get txt2Xl => merge(const TextStyle(fontSize: 22));
  TextStyle get txt3Xl => merge(const TextStyle(fontSize: 24));
  TextStyle get txt4Xl => merge(const TextStyle(fontSize: 28));
  TextStyle get textWhite => merge(const TextStyle(color: Colors.white));
  TextStyle get textOrange => merge(const TextStyle(color: Colors.orangeAccent));
  TextStyle get textGrey => merge(const TextStyle(color: Colors.grey));
  TextStyle get textRed => merge(const TextStyle(color: Colors.red));
  TextStyle get textDefaultText => merge(const TextStyle(color: kBoxGrey));
  TextStyle get textBlack => merge(const TextStyle(color: Colors.black));

  TextStyle get textHeight=> merge(const TextStyle(height: 2));
  TextStyle get txtHeavy => merge(const TextStyle(fontWeight: FontWeight.w400));
  TextStyle get txtW600 => merge(const TextStyle(fontWeight: FontWeight.w600));
  TextStyle get txtBold => merge(const TextStyle(fontWeight: FontWeight.w700));
}

const TextStyle txt  = TextStyle();


final roundedSm = BorderRadius.circular(12);
final roundedMd = BorderRadius.circular(16);
final roundedLg = BorderRadius.circular(20);


w(double size) => SizedBox(width: size,);
h(double size) => SizedBox(height: size,);

const mainPadding = EdgeInsets.symmetric(horizontal: 15);
const topPadding = EdgeInsets.symmetric(vertical: 15,horizontal: 15);



final shadowLG = [
  BoxShadow(
    color: Colors.grey.withOpacity(0.5),
    spreadRadius: 10,
    blurRadius: 7,
    offset: const Offset(0, 10), // changes position of shadow
  ),
];

final shadowSM = [
  BoxShadow(
    color: Colors.grey.withOpacity(0.15),
    spreadRadius: 1,
    blurRadius: 10,
    offset: const Offset(0, 3), // changes position of shadow
  ),
];



ToastificationItem customSuccessNotification(BuildContext context,String text,{String description = ''}) {
  return toastification.show(
      context: context,
      type: ToastificationType.success,
      style: ToastificationStyle.flatColored,
      title: Text(text),
      description: Text(description),
      alignment: Alignment.topCenter,
      autoCloseDuration: const Duration(seconds: 3),
      animationBuilder: (
          context,
          animation,
          alignment,
          child,
          ) {
        return ScaleTransition(
          scale: animation,
          child: child,
        );
      },
      direction: TextDirection.rtl,
      borderRadius: BorderRadius.circular(12.0),
      showProgressBar: false
  );
}

ToastificationItem customErrorNotification(BuildContext context,String text,{String description = ''}) {
  return toastification.show(
      context: context,
      type: ToastificationType.error,
      style: ToastificationStyle.flatColored,
      title: Text(text),
      description: Text(description),
      alignment: Alignment.topCenter,
      autoCloseDuration: const Duration(seconds: 3),
      animationBuilder: (
          context,
          animation,
          alignment,
          child,
          ) {
        return ScaleTransition(
          scale: animation,
          child: child,
        );
      },
      direction: TextDirection.rtl,
      borderRadius: BorderRadius.circular(12.0),
      showProgressBar: false
  );
}


