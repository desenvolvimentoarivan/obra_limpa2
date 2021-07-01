import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:motion_toast/motion_toast.dart';
import 'package:obra_limpa/app/utils/exports.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';

class CustomButtom extends StatelessWidget {
  final Function()? onPress;
  final bool? enabled;
  final bool loading;
  final RoundedLoadingButtonController? btnController;

  CustomButtom(
      {Key? key,
      this.onPress,
      this.enabled,
      this.loading = true,
      this.btnController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: SizeConfig.widthPercent(80),
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50.0),
        ),
        child: RoundedLoadingButton(
          child: Text('Entrar', style: TextStyle(color: Colors.white)),
          controller: btnController!,
          onPressed: onPress,

          /*() {
            Future.delayed(Duration(seconds: 2), () {
              btnController?.reset();
              MotionToast.error(
                title: "Error",
                titleStyle: TextStyle(fontWeight: FontWeight.bold),
                description: "Login Inválido",
                enableAnimation: false,
              ).show(context);
            });
          },*/
          borderRadius: 10,
          color: Colors.red,
        )
        /*ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: 5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
        child: loading
            //? CupertinoActivityIndicator()
            ? GFLoader(
                type: GFLoaderType.ios,
              )
            : Text(
                'Entrar',
                style: TextStyle(
                  fontFamily: 'TwentiethCenturyMT',
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
        onPressed: onPress,
      ),*/
        );
  }
}
