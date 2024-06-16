import 'package:flutter/material.dart';

Widget buttonIconFiled(IconData iconData,Color colorIconButton,VoidCallback action){
  return IconButton.filled(
      style: ButtonStyle(backgroundColor: WidgetStatePropertyAll<Color>(colorIconButton)),
      onPressed: action,
      icon:  Icon(iconData,color: Colors.white,)
  );
}

